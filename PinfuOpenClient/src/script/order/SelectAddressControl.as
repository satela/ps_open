package script.order
{
	import eventUtil.EventCenter;
	
	import laya.components.Script;
	import laya.events.Event;
	import laya.ui.Box;
	import laya.ui.Image;
	import laya.utils.Browser;
	import laya.utils.Handler;
	
	import model.HttpRequestUtil;
	import model.Userdata;
	import model.orderModel.PaintOrderModel;
	import model.users.AddressVo;
	
	import script.ViewManager;
	
	import ui.order.SelectAddressPanelUI;
	
	public class SelectAddressControl extends Script
	{
		private var uiSkin:SelectAddressPanelUI;
		
		private var tempaddress:AddressVo;
		public function SelectAddressControl()
		{
			super();
		}
		
		override public function onStart():void
		{
			uiSkin = this.owner as SelectAddressPanelUI;
			
			uiSkin.list_address.itemRender = SelAddressItem;
			uiSkin.list_address.vScrollBarSkin = "";
			uiSkin.list_address.selectEnable = true;
			uiSkin.list_address.spaceY = 2;
			uiSkin.list_address.renderHandler = new Handler(this, updateAddressItem);
			
			uiSkin.list_address.selectHandler = new Handler(this,onSlecteAddress);
			
			uiSkin.btncancel.on(Event.CLICK,this,onCloseView);
			uiSkin.btnok.on(Event.CLICK,this,onConfirmSelectAddress);
			uiSkin.btnadd.on(Event.CLICK,this,onShowAddAdress);
			//uiSkin.mainpanel.vScrollBarSkin = "";
			//uiSkin.mainpanel.hScrollBarSkin = "";
			
			//uiSkin.mainpanel.height = Browser.height;
			//uiSkin.mainpanel.width = Browser.width;
			uiSkin.height = Browser.clientHeight *1920/Browser.clientWidth;

			uiSkin.inputsearch.on(Event.INPUT,this,onSearchAddress);
			uiSkin.list_address.array = Userdata.instance.passedAddress;
			
			uiSkin.closebtn.on(Event.CLICK,this,onCloseView);
			
			if(Userdata.instance.passedAddress.length == 0)
			{
				HttpRequestUtil.instance.Request(HttpRequestUtil.httpUrl + HttpRequestUtil.addressListUrl,this,getMyAddressBack,"page=1",null,null);

			}
			EventCenter.instance.on(EventCenter.BROWER_WINDOW_RESIZE,this,onResizeBrower);

			tempaddress = PaintOrderModel.instance.selectAddress;
			
			Laya.timer.once(10,null,function()
			{
				var cells:Vector.<Box> = uiSkin.list_address.cells;
				for(var i:int=0;i < cells.length;i++)
				{
					(cells[i] as SelAddressItem).ShowSelected = (cells[i] as SelAddressItem).address == PaintOrderModel.instance.selectAddress;
				}
			});
			
			uiSkin.dragImg.on(Event.MOUSE_DOWN,this,startDragPanel);
			//uiSkin.dragImg.on(Event.MOUSE_OUT,this,stopDragPanel);
			uiSkin.dragImg.on(Event.MOUSE_UP,this,stopDragPanel);
			
			EventCenter.instance.on(EventCenter.UPDATE_MYADDRESS_LIST,this,updateList);

			//PaintOrderModel.instance.selectAddress = null;
		}
		
		private function startDragPanel(e:Event):void
		{			
			if(e.target == uiSkin.list_address.scrollBar.slider.bar)
				return;
			
			(uiSkin.dragImg.parent as Image).startDrag();//new Rectangle(0,0,Browser.width,Browser.height));
			e.stopPropagation();
		}
		private function stopDragPanel():void
		{
			(uiSkin.dragImg.parent as Image).stopDrag();
		}
		
		private function getMyAddressBack(data:Object):void
		{
			var result:Object = JSON.parse(data as String);
			if(result.code == "0")
			{
				Userdata.instance.initMyAddress(result.data.expressList as Array);
				Userdata.instance.defaultAddId = result.data.defaultId;
				
				uiSkin.list_address.array = Userdata.instance.passedAddress;

			}
			else if(result.code == "205" || result.code　== "404")
			{
				ViewManager.instance.openView(ViewManager.VIEW_USERCENTER,true);
			}
		}
		
		private function onResizeBrower():void
		{
			//uiSkin.mainpanel.height = Browser.height;
			//uiSkin.mainpanel.width = Browser.width;
			uiSkin.height = Browser.clientHeight *1920/Browser.clientWidth;

		}
		private function updateList(data:AddressVo):void
		{
			
			uiSkin.list_address.refresh();
			Laya.timer.once(10,null,function()
			{
				var cells:Vector.<Box> = uiSkin.list_address.cells;
				for(var i:int=0;i < cells.length;i++)
				{
					(cells[i] as SelAddressItem).ShowSelected = (cells[i] as SelAddressItem).address == tempaddress;
				}
			});
			
		}
		private function onShowAddAdress():void
		{
			if(Userdata.instance.canAddNewAddress())
			{
				ViewManager.instance.openView(ViewManager.VIEW_ADD_NEW_ADDRESS,false,{url:HttpRequestUtil.addressAddUrl});
			}
			else
			{
				ViewManager.showAlert("有地址在等待审核状态，禁止添加新地址，你可删除待审核地址或等待审核通过后重新添加");
			}
		}
		private function onSearchAddress():void
		{
			if(uiSkin.inputsearch.text == "")
			{
				uiSkin.list_address.array = Userdata.instance.passedAddress;
				return;
			}
			var tempadd:Array = [];
			for(var i:int=0;i < Userdata.instance.passedAddress.length;i++)
			{
				if((Userdata.instance.passedAddress[i].addressDetail as String).indexOf(uiSkin.inputsearch.text) >= 0)
				{
					tempadd.push(Userdata.instance.passedAddress[i]);
				}
			}
			uiSkin.list_address.array = tempadd;
		}
		private function onSlecteAddress(index:int):void
		{
			// TODO Auto Generated method stub
			
			//(uiSkin.list_address.cells[index] as SelAddressItem).ShowSelected = true;
			tempaddress = uiSkin.list_address.array[index];;
		
			Laya.timer.frameOnce(1,this,function(){
				
				for each(var item:SelAddressItem in uiSkin.list_address.cells)
				{
					item.ShowSelected = item.address == uiSkin.list_address.array[index];
				}
			});
		}
		
		private function updateAddressItem(cell:SelAddressItem):void
		{
			cell.setData(cell.dataSource);
		}
		private function onConfirmSelectAddress(index:int):void
		{
			// TODO Auto Generated method stub
			if(tempaddress != null)
			{
				PaintOrderModel.instance.selectAddress = tempaddress;
				EventCenter.instance.event(EventCenter.SELECT_ORDER_ADDRESS,tempaddress);
			}
			onCloseView();
		}
		
		private function onCloseView():void
		{
			// TODO Auto Generated method stub
			ViewManager.instance.closeView(ViewManager.VIEW_SELECT_ADDRESS);
		}
		public override function onDestroy():void
		{
			EventCenter.instance.off(EventCenter.UPDATE_MYADDRESS_LIST,this,updateList);
			EventCenter.instance.off(EventCenter.BROWER_WINDOW_RESIZE,this,onResizeBrower);

			
		}
	}
}
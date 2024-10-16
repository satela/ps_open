package script.order
{
	import eventUtil.EventCenter;
	
	import laya.components.Script;
	import laya.events.Event;
	
	import model.HttpRequestUtil;
	import model.Userdata;
	import model.orderModel.DeliveryTypeVo;
	import model.orderModel.MatetialClassVo;
	import model.orderModel.OrderConstant;
	import model.orderModel.PaintOrderModel;
	import model.picmanagerModel.DirectoryFileModel;
	
	import script.ViewManager;
	
	import ui.characterpaint.CharacterPaintUI;
	import ui.inuoView.OrderPicManagerPanelUI;
	import ui.inuoView.OrderTypePanelUI;
	import ui.inuoView.SetMaterialPanelUI;
	
	import utils.UtilTool;
	
	public class OrderTypeChooseController extends Script
	{
		private var uiSkin:OrderTypePanelUI;
		public function OrderTypeChooseController()
		{
			super();
		}
		
		override public function onStart():void
		{
			
			uiSkin = this.owner as OrderTypePanelUI; 
			
			uiSkin.myaddresstxt.on(Event.CLICK,this,onShowSelectAddress);
			uiSkin.changeAddr.on(Event.CLICK,this,onShowSelectAddress);

			uiSkin.dingzhiBtn.disabled= true;
			uiSkin.productBtn.disabled= true;
			uiSkin.zipaiBtn.disabled= true;

			PaintOrderModel.instance.resetData();
			uiSkin.paintOrderBtn.on(Event.CLICK,this,function(){
				
				if(PaintOrderModel.instance.selectAddress == null)
				{
					ViewManager.showAlert("请先添加收货地址");
					return;
				}
				if(PaintOrderModel.instance.outPutAddr.length <= 0)
				{
					ViewManager.showAlert("您当前的收货地址没有可服务的输出中心，请选择其他收货地址");
					return;
				}
				PaintOrderModel.instance.orderType = OrderConstant.PAINTING;
				var num:int = 0;
				for each(var fvo in DirectoryFileModel.instance.haselectPic)
				{
					num++;
				}
				if(num == 0)
					EventCenter.instance.event(EventCenter.SHOW_CONTENT_PANEL,[OrderPicManagerPanelUI,0]);
				else
					EventCenter.instance.event(EventCenter.SHOW_CONTENT_PANEL,[SetMaterialPanelUI,0]);

				
			})
				
			uiSkin.zipaiBtn.on(Event.CLICK,this,function(){
				
				PaintOrderModel.instance.orderType = OrderConstant.CUTTING;
				
				EventCenter.instance.event(EventCenter.SHOW_CONTENT_PANEL,[CharacterPaintUI,0]);
				
			})
				
			EventCenter.instance.on(EventCenter.SELECT_ORDER_ADDRESS,this,onSelectedSelfAddress);

			if(Userdata.instance.getDefaultAddress() != null)
			{
				HttpRequestUtil.instance.Request(HttpRequestUtil.httpUrl + HttpRequestUtil.getOuputAddr + "addr_id=" + Userdata.instance.getDefaultAddress().zoneid + "&manufacturer_type=喷印输出中心"+ "&webcode="+ Userdata.instance.webCode,this,onGetOutPutAddress,null,null);
				uiSkin.myaddresstxt.text = Userdata.instance.getDefaultAddress().addressDetail;
				uiSkin.myaddresstxt.width = uiSkin.myaddresstxt.textWidth;
				uiSkin.addbox.refresh();
				
				PaintOrderModel.instance.selectAddress = Userdata.instance.getDefaultAddress();
			}
		}
		
		private function onShowSelectAddress():void
		{
			ViewManager.instance.openView(ViewManager.VIEW_SELECT_ADDRESS);

		}
		private function onSelectedSelfAddress():void
		{
			if(PaintOrderModel.instance.selectAddress)
			{
				uiSkin.myaddresstxt.text = PaintOrderModel.instance.selectAddress.addressDetail;
				uiSkin.myaddresstxt.width = uiSkin.myaddresstxt.textWidth;
				uiSkin.addbox.refresh();

				HttpRequestUtil.instance.Request(HttpRequestUtil.httpUrl + HttpRequestUtil.getOuputAddr + "addr_id=" + PaintOrderModel.instance.selectAddress.zoneid + "&manufacturer_type=喷印输出中心" + "&webcode="+ Userdata.instance.webCode,this,onGetOutPutAddress,null,null);
			}
		}
		private function onGetOutPutAddress(data:*):void
		{
			if(uiSkin.destroyed)
				return;
			
			var result:Object = JSON.parse(data as String);
			if(!result.hasOwnProperty("status"))
			{
				PaintOrderModel.instance.initOutputAddr(result as Array);
				
				PaintOrderModel.instance.selectFactoryAddress = PaintOrderModel.instance.outPutAddr.concat();
				while(uiSkin.outputbox.numChildren > 0)
					uiSkin.outputbox.removeChildAt(0);
				if(PaintOrderModel.instance.outPutAddr.length > 0)
				{
					//PaintOrderModel.instance.selectFactoryAddress = PaintOrderModel.instance.outPutAddr[0];
					//this.uiSkin.factorytxt.text = PaintOrderModel.instance.selectFactoryAddress[0].name + " " + PaintOrderModel.instance.selectFactoryAddress[0].addr;
					for(var i:int=0;i < PaintOrderModel.instance.outPutAddr.length;i++)
					{
						var outputitem:OutputCenterCell = new OutputCenterCell(PaintOrderModel.instance.outPutAddr[i],i);
						uiSkin.outputbox.addChild(outputitem);
						
					}
									
					
					var manufacurerList:Array = PaintOrderModel.instance.getSelectedOutPutCenter();
					
					HttpRequestUtil.instance.Request(HttpRequestUtil.httpUrl + HttpRequestUtil.getProdCategory + "addr_id=" + PaintOrderModel.instance.selectAddress.zoneid + "&orderSource=Penyin&" + "manufacturerList=" + manufacurerList.join(",") + "&webcode=" + Userdata.instance.webCode,this,onGetProductBack,null,null);
					
					//var params:Object = {"manufacturer_list":PaintOrderModel.instance.getManufactureCodeList(),"addr_id":PaintOrderModel.instance.selectAddress.searchZoneid};
					var params:Object = "manufacturerList="+PaintOrderModel.instance.getManufactureCodeList().toString() + "&addr_id=" + PaintOrderModel.instance.selectAddress.zoneid;
					
//					Userdata.instance.getLastMonthRatio(this,function():void{
//						
//						HttpRequestUtil.instance.Request(HttpRequestUtil.httpUrl + HttpRequestUtil.getDeliveryList + params,this,onGetDeliveryBack,null,null);
//						
//					});
					
					HttpRequestUtil.instance.Request(HttpRequestUtil.httpUrl + HttpRequestUtil.getDeliveryList + params,this,onGetDeliveryBack,null,null);

					
					//HttpRequestUtil.instance.Request(HttpRequestUtil.httpUrl + HttpRequestUtil.getDeliveryList,this,onGetDeliveryBack,params,"post");
					
				}
				else
				{
					PaintOrderModel.instance.selectFactoryAddress = null;
					PaintOrderModel.instance.productList = [];
					//this.uiSkin.factorytxt.text = "你选择的地址暂无生产商";
				}
			}
			
			
		}
		private function onGetDeliveryBack(data:Object):void
		{
			if(this.destroyed)
				return;
			var result:Object = JSON.parse(data as String);
			
			if(!result.hasOwnProperty("status"))
			{
				PaintOrderModel.instance.deliveryList = {};
				
				
				
				for(var i:int=0;i < result.length;i++)
				{
					var deliverys:Array = result[i].deliveryList;
					PaintOrderModel.instance.deliveryList[result[i].manufacturer_code] = [];
					for(var j:int=0;j < deliverys.length;j++)
					{
						var tempdevo:DeliveryTypeVo = new DeliveryTypeVo(deliverys[j]);
						tempdevo.belongManuCode = result[i].manufacturer_code;
						
						PaintOrderModel.instance.deliveryList[result[i].manufacturer_code].push(tempdevo);
						
						if(tempdevo.delivery_name == OrderConstant.DELIVERY_TYPE_BY_MANUFACTURER)
						{							
							PaintOrderModel.instance.selectDelivery = tempdevo;
						}
					}
					
				}
			}
			
		}
		private function onGetProductBack(data:Object):void
		{
			var result:Object = JSON.parse(data as String);
			if(!result.hasOwnProperty("status"))
			{
				var product:Array = result[0].children as Array;
				
				PaintOrderModel.instance.productList = [];
				
				var hasMatName:Array = [];
				for(var i:int=0;i < product.length;i++)
				{
					if( hasMatName.indexOf(product[i].prodCat_name) < 0)
					{
						var matvo:MatetialClassVo = new MatetialClassVo(product[i]);
						PaintOrderModel.instance.productList.push(matvo);
						hasMatName.push(product[i].prodCat_name);
					}
				}
			}
		}
		
		public override function onDestroy():void
		{
			EventCenter.instance.off(EventCenter.SELECT_ORDER_ADDRESS,this,onSelectedSelfAddress);

		}
		
	}
}
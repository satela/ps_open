/**This class is automatically generated by LayaAirIDE, please do not make any modifications. */
package ui.order {
	import laya.ui.*;
	import laya.display.*;

	public class PackageEditItemUI extends View {
		public var addresstxt:Label;
		public var deletebtn:Button;
		public var itembox:VBox;
		public var cutline:Image;
		public var comment:TextInput;

		public static var uiView:Object =/*[STATIC SAFE]*/{"type":"View","props":{"width":135},"compId":2,"child":[{"type":"Label","props":{"y":0,"x":5,"wordWrap":true,"width":109,"var":"addresstxt","valign":"middle","text":"上海市 浦东新区 周浦镇","overflow":"hidden","leading":4,"height":36,"fontSize":12,"font":"SimHei","color":"#50575C","bold":true},"compId":14},{"type":"Button","props":{"var":"deletebtn","top":0,"stateNum":1,"skin":"uiCommonUpdate/subicon.png","right":1,"labelSize":12,"labelFont":"SimHei"},"compId":4},{"type":"VBox","props":{"var":"itembox","top":110,"right":0,"left":0},"compId":10},{"type":"Image","props":{"y":0,"width":1,"var":"cutline","skin":"commers/cutline.png","right":0,"height":200},"compId":15},{"type":"Label","props":{"y":34,"x":5,"text":"备注","fontSize":12,"font":"SimHei","color":"#50575C"},"compId":16},{"type":"TextInput","props":{"wordWrap":true,"var":"comment","top":50,"text":"包裹名ut","skin":"uiCommonUpdate/grayFrame.png","right":5,"left":5,"height":34,"fontSize":18,"font":"SimHei","bold":true,"sizeGrid":"9,6,7,5"},"compId":17}],"loadList":["uiCommonUpdate/subicon.png","commers/cutline.png","uiCommonUpdate/grayFrame.png"],"loadList3D":[]};
		override protected function createChildren():void {
			super.createChildren();
			createView(uiView);

		}

	}
}
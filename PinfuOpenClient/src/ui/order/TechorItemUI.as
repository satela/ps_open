/**This class is automatically generated by LayaAirIDE, please do not make any modifications. */
package ui.order {
	import laya.ui.*;
	import laya.display.*;

	public class TechorItemUI extends View {
		public var grayimg:Image;
		public var techBtn:Button;
		public var shineimg:Image;
		public var tipImg:Image;

		public static var uiView:Object =/*[STATIC SAFE]*/{"type":"View","props":{"width":300,"height":44},"compId":2,"child":[{"type":"Image","props":{"y":0,"x":0,"var":"grayimg","top":0,"skin":"uiCommonUpdate/grayDisbale.png","right":0,"left":0,"gray":true,"bottom":0,"sizeGrid":"12,20,13,22"},"compId":10},{"type":"Button","props":{"width":300,"var":"techBtn","skin":"uiCommonUpdate/processBtn.png","labelSize":24,"labelFont":"SimHei","labelColors":"#262B2E,#003dc6,#003dc6","labelBold":true,"label":"户内PP背胶","height":44,"sizeGrid":"9,22,9,22"},"compId":9},{"type":"Image","props":{"var":"shineimg","top":0,"skin":"uiCommonUpdate/shineGreen.png","right":0,"mouseEnabled":false,"left":0,"bottom":0,"sizeGrid":"12,28,12,28"},"compId":11},{"type":"Image","props":{"width":20,"var":"tipImg","top":2,"skin":"iconsNew/techTip.png","right":5,"height":20},"compId":12}],"loadList":["uiCommonUpdate/grayDisbale.png","uiCommonUpdate/processBtn.png","uiCommonUpdate/shineGreen.png","iconsNew/techTip.png"],"loadList3D":[]};
		override protected function createChildren():void {
			super.createChildren();
			createView(uiView);

		}

	}
}
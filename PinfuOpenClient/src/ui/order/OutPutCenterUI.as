/**This class is automatically generated by LayaAirIDE, please do not make any modifications. */
package ui.order {
	import laya.ui.*;
	import laya.display.*;
	import laya.display.Text;
	import script.prefabScript.LinkTextControl;

	public class OutPutCenterUI extends View {
		public var qqContact:Button;
		public var checkselect:CheckBox;
		public var outicon:Image;
		public var factorytxt:Text;
		public var holaday:Label;

		public static var uiView:Object =/*[STATIC SAFE]*/{"type":"View","props":{"height":40},"compId":2,"child":[{"type":"Box","props":{"y":0,"x":0},"compId":3,"child":[{"type":"Button","props":{"y":0,"x":600,"width":128,"visible":false,"var":"qqContact","skin":"commers/btn1.png","sizeGrid":"3,3,3,3","labelSize":18,"labelFont":"SimHei","labelColors":"#FFFFFF,#FFFFFF,#FFFFFF","label":"qq交谈","height":40},"compId":5},{"type":"CheckBox","props":{"y":11,"x":19,"var":"checkselect","skin":"uiCommonUpdate/grennsel.png","scaleY":1,"scaleX":1,"mouseEnabled":false,"labelSize":20},"compId":8},{"type":"Image","props":{"y":5,"x":41,"width":30,"var":"outicon","skin":"commers/circle.png","height":30},"compId":11},{"type":"HBox","props":{"y":9,"x":78},"compId":12,"child":[{"type":"Text","props":{"var":"factorytxt","text":"更改输出中心","presetID":1,"fontSize":24,"font":"SimHei","color":"#000000","bold":true,"y":0,"x":0,"isPresetRoot":true,"runtime":"laya.display.Text"},"compId":6,"child":[{"type":"Script","props":{"txttype":2,"presetID":2,"runtime":"script.prefabScript.LinkTextControl"},"compId":7}]},{"type":"Label","props":{"y":2,"x":206,"var":"holaday","text":"放假时间20200122-1220","fontSize":18,"font":"SimHei","color":"#e8100c"},"compId":9}]}]}],"loadList":["commers/btn1.png","uiCommonUpdate/grennsel.png","commers/circle.png","prefabs/LinksText.prefab"],"loadList3D":[]};
		override protected function createChildren():void {
			super.createChildren();
			createView(uiView);

		}

	}
}
/**This class is automatically generated by LayaAirIDE, please do not make any modifications. */
package ui.common {
	import laya.ui.*;
	import laya.display.*;
	import laya.html.dom.HTMLDivElement;

	public class TipPanelUI extends View {
		public var backimg:Image;
		public var htmltxt:HTMLDivElement;

		public static var uiView:Object =/*[STATIC SAFE]*/{"type":"View","props":{},"compId":2,"child":[{"type":"Image","props":{"y":0,"x":0,"width":210,"var":"backimg","skin":"commers/choosebg.png","sizeGrid":"8,8,8,8","height":36},"compId":3,"child":[{"type":"HTMLDivElement","props":{"y":10,"x":10,"width":200,"var":"htmltxt","innerHTML":"htmlText","height":100,"runtime":"laya.html.dom.HTMLDivElement"},"compId":5}]}],"loadList":["commers/choosebg.png"],"loadList3D":[]};
		override protected function createChildren():void {
			super.createChildren();
			createView(uiView);

		}

	}
}
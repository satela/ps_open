/**This class is automatically generated by LayaAirIDE, please do not make any modifications. */
package ui.order {
	import laya.ui.*;
	import laya.display.*;
	import script.order.SelectFactoryControl;

	public class SelectFactoryPanelUI extends View {
		public var list_address:List;
		public var okbtn:Button;
		public var cancelbtn:Button;

		override protected function createChildren():void {
			super.createChildren();
			loadScene("order/SelectFactoryPanel");

		}

	}
}
/**This class is automatically generated by LayaAirIDE, please do not make any modifications. */
package ui.order {
	import laya.ui.*;
	import laya.display.*;
	import script.order.SelectAttchesControl;

	public class SelectAttchPanelUI extends View {
		public var mainpanel:Panel;
		public var dragImg:Image;
		public var matName:Label;
		public var attachPanel:Panel;
		public var btnok:Button;
		public var closeBtn:Button;

		override protected function createChildren():void {
			super.createChildren();
			loadScene("order/SelectAttchPanel");

		}

	}
}
/**This class is automatically generated by LayaAirIDE, please do not make any modifications. */
package ui {
	import laya.ui.*;
	import laya.display.*;
	import laya.display.Text;
	import script.prefabScript.LinkTextControl;
	import script.MainPageControl;

	public class LoginViewUI extends Scene {
		public var panel_main:Panel;
		public var btnUpload:Text;
		public var paintOrderBtn:Text;
		public var btnproduct:Text;
		public var btnUserCenter:Text;
		public var btnact:Text;
		public var txt_login:Text;
		public var txt_reg:Text;
		public var characBtn:Text;
		public var maintaintxt:Label;
		public var productCustomization:Text;
		public var enterinfo:Box;
		public var linktobus:Button;
		public var linkicp:Text;

		override protected function createChildren():void {
			super.createChildren();
			loadScene("LoginView");

		}

	}
}
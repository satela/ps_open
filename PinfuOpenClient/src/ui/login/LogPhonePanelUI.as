/**This class is automatically generated by LayaAirIDE, please do not make any modifications. */
package ui.login {
	import laya.ui.*;
	import laya.display.*;
	import script.prefabScript.CmykInputControl;
	import laya.display.Text;
	import script.prefabScript.LinkTextControl;
	import script.login.LogPanelControl;

	public class LogPhonePanelUI extends View {
		public var mainpanel:Panel;
		public var logBox:Box;
		public var pwdImg:Image;
		public var input_pwd:TextInput;
		public var pwdError:Label;
		public var delBtn:Button;
		public var accoutImg:Image;
		public var input_account:TextInput;
		public var accountError:Label;
		public var delBtn:Button;
		public var btn_login:Button;
		public var checkAuto:CheckBox;
		public var txt_forget:Text;
		public var txt_reg:Text;
		public var loginedBox:Box;
		public var gotoFirst:Button;

		override protected function createChildren():void {
			super.createChildren();
			loadScene("login/LogPhonePanel");

		}

	}
}
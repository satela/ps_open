/**This class is automatically generated by LayaAirIDE, please do not make any modifications. */
package ui.usercenter {
	import laya.ui.*;
	import laya.display.*;
	import script.prefabScript.CmykInputControl;
	import script.usercenter.OrganizeMrgControl;

	public class AccountSettingPanelUI extends View {
		public var userName:TextInput;
		public var delBtn:Button;
		public var changeName:Button;
		public var headImg:Image;
		public var editBtn:Image;
		public var createTime:Label;
		public var organizeBox:Box;
		public var memberlist:List;
		public var createOrganize:Button;
		public var applyListBtn:Button;
		public var organizelist:List;
		public var distributePanel:Box;
		public var organizeCom:ComboBox;
		public var moveOkbtn:Button;
		public var closeDist:Button;
		public var createOrganizePanel:Box;
		public var organizeNameInput:TextInput;
		public var delBtn:Button;
		public var createBtnOk:Button;
		public var btncloseCreate:Button;
		public var setAuthorityPanel:Box;
		public var confirmauthoritybtn:Button;
		public var closeauthoritybtn:Button;
		public var order_submit:CheckBox;
		public var order_submit_with_balances:CheckBox;
		public var order_price_display:CheckBox;
		public var order_list_self:CheckBox;
		public var order_list_org:CheckBox;
		public var accoutname:Label;
		public var asset_log_list:CheckBox;

		override protected function createChildren():void {
			super.createChildren();
			loadScene("usercenter/AccountSettingPanel");

		}

	}
}
/**This class is automatically generated by LayaAirIDE, please do not make any modifications. */
package ui.usercenter {
	import laya.ui.*;
	import laya.display.*;
	import script.usercenter.ChargeActivityController;

	public class ChargeActivityPanelUI extends View {
		public var actpanel:Image;
		public var actbox:Box;
		public var acttitle:Label;
		public var actrule:Label;
		public var chargeamount:TextInput;
		public var totalreturn:TextInput;
		public var moneybtn0:Button;
		public var moneybtn1:Button;
		public var moneybtn2:Button;
		public var moneybtn3:Button;
		public var moneybtn4:Button;
		public var moneybtn5:Button;
		public var moneybtn6:Button;
		public var moneybtn7:Button;
		public var zhiufbaobtn:Button;
		public var joinact:Button;
		public var grpchargeBtn:Button;
		public var noactbox:Box;
		public var accout:Label;
		public var moneytxt:Label;
		public var actMoney:Label;
		public var frezeMoney:Label;
		public var recordbtn:Button;
		public var groupCharge:Box;
		public var finishcharge:Button;
		public var copyname:Button;
		public var companyname:Label;
		public var bank:Label;
		public var copybank:Button;
		public var account:Label;
		public var copyaccount:Button;
		public var closeGroup:Button;

		override protected function createChildren():void {
			super.createChildren();
			loadScene("usercenter/ChargeActivityPanel");

		}

	}
}
/**This class is automatically generated by LayaAirIDE, please do not make any modifications. */
package ui.usercenter {
	import laya.ui.*;
	import laya.display.*;
	import laya.display.Text;
	import script.prefabScript.LinkTextControl;
	import script.prefabScript.CmykInputControl;
	import script.usercenter.CompanyEditController;

	public class CompanyInfoEditPanelUI extends View {
		public var mainpanel:Panel;
		public var dragImg:Image;
		public var btnok:Button;
		public var btncancel:Text;
		public var input_companyName:TextInput;
		public var delBtn:Button;
		public var input_shortName:TextInput;
		public var delBtn:Button;
		public var input_address:TextInput;
		public var delBtn:Button;
		public var reditCode:TextInput;
		public var delBtn:Button;
		public var provbox:Image;
		public var provList:List;
		public var citybox:Image;
		public var cityList:List;
		public var areabox:Image;
		public var areaList:List;
		public var townbox:Image;
		public var townList:List;
		public var btnSelProv:Button;
		public var province:Label;
		public var btnSelCity:Button;
		public var citytxt:Label;
		public var btnSelArea:Button;
		public var areatxt:Label;
		public var btnSelTown:Button;
		public var towntxt:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadScene("usercenter/CompanyInfoEditPanel");

		}

	}
}
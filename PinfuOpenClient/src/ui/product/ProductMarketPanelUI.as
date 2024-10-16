/**This class is automatically generated by LayaAirIDE, please do not make any modifications. */
package ui.product {
	import laya.ui.*;
	import laya.display.*;
	import laya.display.Text;
	import script.prefabScript.LinkTextControl;
	import script.prefabScript.TopBannerControl;
	import script.product.ProductMarketControl;
	import laya.html.dom.HTMLDivElement;

	public class ProductMarketPanelUI extends View {
		public var panel_main:Panel;
		public var firstPage:Text;
		public var myorder:Text;
		public var userName:Text;
		public var logout:Text;
		public var myaddresstxt:Text;
		public var outputbox:VBox;
		public var downbox:Box;
		public var productCateList:List;
		public var productlist:List;
		public var haschooselist:List;
		public var deliversp:Sprite;
		public var deliverbox:VBox;
		public var panelbottom:Panel;
		public var textTotalPrice:HTMLDivElement;
		public var textDeliveryType:HTMLDivElement;
		public var textPayPrice:HTMLDivElement;
		public var saveorder:Button;
		public var paybtn:Button;

		override protected function createChildren():void {
			super.createChildren();
			loadScene("product/ProductMarketPanel");

		}

	}
}
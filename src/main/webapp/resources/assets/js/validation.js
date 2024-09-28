function form_check_addProduct() {
	let productId = document.getElementById("newProduct");
	let pName = document.getElementById("pName");
	let unitPrice = document.getElementById("unitPrice");
	let description = document.getElementById("description");
	let category = document.getElementById("category");
	let pIimg = document.getElementById("pIimg");
	
	if(!(productId.value)) {
		alert("상품코드가 입력되지 않았습니다.");
		productId.focus();
		return false;
	}
	if(!(pName.value)) {
		alert("상품명이 입력되지 않았습니다.");
		pName.focus();
		return false;
	}
	if(unitPrice.value.length==0) {
		alert("상품가격을 입력해주세요.");
		unitPrice.focus();
		return false;
	} else if (unitPrice.value.length>8) {
		alert("상품가격은 천만원 이내의 가격으로 입력해주세요.");
		unitPrice.focus();
		return false;
	} else if (unitPrice.value<0) {
		alert("상품가격은 음수로 입력하수 없습니다.");
		unitPrice.focus();
		return false;
	} else if (isNaN(unitPrice.value)) {
		alert("상품가격은 문자를입력할수 없습니다.");
		unitPrice.focus();
		return false;
	}
	if(!(description.value)) {
		alert("상세정보가 입력되지 않았습니다.");
		description.focus();
		return false;
	}
	if(!(category.value)) {
		alert("분류가 입력되지 않았습니다.");
		category.focus();
		return false;
	}
	if(!(pImg.value)) {
		alert("상품 이미지가 선택되지 않았습니다.");
		pIimg.focus();
		return false;
	}
	document.registerNewProduct.submit();
}
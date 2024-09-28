package dao;

import java.util.ArrayList;

import dto.Product;

public class ProductRepository {
	private ArrayList<Product> listOfProducts = new ArrayList<Product>();

	// 싱글톤 객체 생성
	private static ProductRepository instance = new ProductRepository();

	public static ProductRepository getInstance() {
		return instance;
	}

	public ProductRepository() {
		Product phone = new Product("P1234", "삼성Phone 8v", 500000);
		phone.setDescription("최신 신상폰으로 ai가 탐재된 폰입니다.");
		phone.setCategory("스마트폰");
		phone.setCondition("신상품");
		phone.setFilename("phone01.jpg");

		Product watch = new Product("P1235", "iphone와치", 600000);
		watch.setDescription("폰의 기능을 가진 시계입니다.");
		watch.setCategory("시계");
		watch.setCondition("중고품");
		watch.setFilename("watch01.jpg");

		Product book = new Product("P1239", "jsp 교재", 10000);
		book.setDescription("jsp를 알아갈 수 있는 교재입니다.");
		book.setCategory("책");
		book.setCondition("신상품");
		book.setFilename("book01.jpg");

		// 상품목록을 리스트에 추가
		listOfProducts.add(phone);
		listOfProducts.add(watch);
		listOfProducts.add(book);
	}

	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}

	// 상품의 아이디를 이용해서 제품에 대한 정보를 얻어오는 메소드
	public Product getProductById(String productId) {
		Product productById = null;

		for (int i = 0; i < listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if (product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;

	}

	// 하나의 제품에 대한 다양한 정보를 제품
	public void addProduct(Product product) {
		listOfProducts.add(product);
	}

}

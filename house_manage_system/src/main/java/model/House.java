package model;

public class House {
	private Integer userid;
	private Integer id;
	private String topic;  //标题
	private String position;  //地区
	private String posidetail;  //详细地址
	private Integer shape;  //几室
	private String layout;  //房型(2室1厅)
	private Double area;  //面积
	private Integer houseage;  //房龄
	private Integer price;  //总价
	private String img;  //图片
	private String creattime;  //发布时间
	private String description;  //描述
	private String name;  //发布人姓名
	private String tel;  //发布人电话
	private String email;  //发布人邮箱
	private Integer type;  //类型
	private Integer unitPrice;  //每平方价格
	private String[] types= {"公寓","住宅","工业厂房","别墅","商业办公"};
	public String getTypeName() {
		return types[type];
	}
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTopic() {
		return topic;
	}
	public void setTopic(String topic) {
		this.topic = topic;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public Integer getShape() {
		return shape;
	}
	public void setShape(Integer shape) {
		this.shape = shape;
	}
	public Double getArea() {
		return area;
	}
	public void setArea(Double area) {
		this.area = area;
	}
	public Integer getHouseage() {
		return houseage;
	}
	public void setHouseage(Integer houseage) {
		this.houseage = houseage;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getCreattime() {
		return creattime;
	}
	public void setCreattime(String creattime) {
		this.creattime = creattime;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	public String getPosidetail() {
		return posidetail;
	}
	public void setPosidetail(String posidetail) {
		this.posidetail = posidetail;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Integer getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(Integer unitPrice) {
		this.unitPrice = unitPrice;
	}
	public String getLayout() {
		return layout;
	}
	public void setLayout(String layout) {
		this.layout = layout;
	}
	
}

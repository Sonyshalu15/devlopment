<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width,initial-scale=1"/>
<title>NexusShop — Modern UI</title>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&family=Poppins:wght@600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>
:root{
  --bg:#f8fafc;
  --primary:#111827;
  --accent:#7c3aed;
  --muted:#6b7280;
  --card:#fff;
}

body{
  margin:0;
  font-family:Inter;
  background:var(--bg);
  color:var(--primary);
}

.container{
  max-width:1200px;
  margin:auto;
  padding:0 20px;
}

/* HEADER */
header{
  background:#fff;
  box-shadow:0 4px 20px rgba(0,0,0,.06);
  position:sticky;
  top:0;
}

.header-inner{
  display:flex;
  justify-content:space-between;
  align-items:center;
  padding:18px 0;
}

.brand{
  font-family:Poppins;
  font-size:22px;
  font-weight:700;
}

.accent{color:var(--accent)}

.search{
  background:#eef2ff;
  padding:10px 16px;
  border-radius:30px;
  display:flex;
}

.search input{
  border:none;
  background:transparent;
  outline:none;
}

/* HERO */
.hero{
  background:linear-gradient(rgba(0,0,0,.5),rgba(0,0,0,.5)),
  url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a") center/cover;
  color:#fff;
  text-align:center;
  padding:100px 20px;
  border-radius:0 0 24px 24px;
}

.hero h1{
  font-size:52px;
}

.btn{
  padding:12px 20px;
  border-radius:30px;
  border:none;
  cursor:pointer;
  font-weight:600;
}

.btn-primary{
  background:linear-gradient(135deg,#7c3aed,#2563eb);
  color:#fff;
}

/* GRID */
.grid{
  display:grid;
  gap:20px;
}

.products{
  grid-template-columns:repeat(auto-fit,minmax(250px,1fr));
}

/* PRODUCT CARD */
.product{
  background:#fff;
  border-radius:18px;
  overflow:hidden;
  transition:.3s;
  box-shadow:0 6px 16px rgba(0,0,0,.06);
}

.product:hover{
  transform:translateY(-8px);
  box-shadow:0 20px 40px rgba(0,0,0,.12);
}

.product img{
  width:100%;
  height:220px;
  object-fit:cover;
}

.product-body{
  padding:14px;
}

.price{
  font-weight:700;
}

.add-btn{
  width:100%;
  padding:10px;
  border:none;
  background:linear-gradient(135deg,#7c3aed,#2563eb);
  color:white;
  border-radius:8px;
  cursor:pointer;
}

/* FOOTER */
footer{
  background:#111827;
  color:white;
  padding:40px;
  text-align:center;
  margin-top:40px;
}

</style>
</head>

<body>

<header>
  <div class="container header-inner">
    <div class="brand">Nexus<span class="accent">Shop</span></div>
    
    <div class="search">
      <input type="text" id="searchInput" placeholder="Search...">
    </div>

    <div>
      🛒 <span id="cartCount">0</span>
    </div>
  </div>
</header>

<section class="hero">
  <h1>Premium Collection</h1>
  <p>Shop the latest trends with amazing deals</p>
  <button class="btn btn-primary">Shop Now</button>
</section>

<section class="container" style="padding:60px 0">
  <h2 style="text-align:center">Trending Products</h2>
  <div class="grid products" id="productsGrid"></div>
</section>

<footer>
  © 2026 NexusShop — All rights reserved
</footer>

<script>
const PRODUCTS = [
  {id:1,title:"iPhone 14",price:999,img:"https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb"},
  {id:2,title:"MacBook Pro",price:1999,img:"https://images.unsplash.com/photo-1593642632823"},
  {id:3,title:"Headphones",price:299,img:"https://images.unsplash.com/photo-1600185365483"},
  {id:4,title:"Sneakers",price:150,img:"https://images.unsplash.com/photo-1542272604"}
];

let cart=0;

function render(){
  const grid=document.getElementById("productsGrid");
  grid.innerHTML="";
  
  PRODUCTS.forEach(p=>{
    const el=document.createElement("div");
    el.className="product";
    el.innerHTML=`
      <img src="${p.img}">
      <div class="product-body">
        <h4>${p.title}</h4>
        <div class="price">$${p.price}</div>
        <button class="add-btn" onclick="add()">Add to Cart</button>
      </div>
    `;
    grid.appendChild(el);
  });
}

function add(){
  cart++;
  document.getElementById("cartCount").innerText=cart;
}

render();
</script>

</body>
</html>

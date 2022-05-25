<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Shop Homepage</title>
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body>
    	<jsp:include page="./includes/header.jsp" /> 
        <header class="bg-dark py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
                    <h1 class="display-4 fw-bolder">Shop in style</h1>
                    <p class="lead fw-normal text-white-50 mb-0">With this shop homepage template</p>
                </div>
            </div>
        </header>
        
        <form method=post action=add.jsp>
            <select name=product>
                <option value="LG Gram 17Z90Q-EA76">LG Gram 17Z90Q-EA76K</option>
                <option value="Samsung Galaxy Book Pro360">Samsung Galaxy Book Pro360</option>
                <option value="Lenovo Legion 7i">Lenovo Legion 7i</option>
                <option value="MacBook Pro">MacBook Pro</option>
            </select> <input value=추가 type=submit> <br>
        </form>
        
        <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="data:image/jpeg;base64,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" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">LG Gram 17Z90Q-EA76K</h5>
                                    <!-- Product price-->
                                   ₩2,609,000
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">View options</a></div>
                            </div>
                        </div>
                    </div>
                   
                   	<div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcTJBwpBKTI_4oOnXRI-tAiu3wPwsqJdqyT23lp9G7-Ro8Y1rVwGUduHvg5EWl6mWR6bPGuhbDGCxQ&usqp=CAc" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Samsung Galaxy Book Pro360</h5>
                                    <!-- Product price-->
                                    ₩2,610,000
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">View options</a></div>
                            </div>
                        </div>
                    </div>
                   
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcSEEoZyfQodHoIDa6UJol4MpcFYCw3HOUij2Ph4zGZZ7JefXIzzS6MiEbl2FRzt7LQMUFw07Gp07a0&usqp=CAc" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Lenovo Legion 7i</h5>
                                    <!-- Product price-->
                                    ₩2,462,190
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">View options</a></div>
                            </div>
                        </div>
                    </div>
                   
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="https://images.samsung.com/kdp/goods/2022/05/12/8ed65ddd-0d0a-45bf-9d86-94c539b4bc1d.png?$PD_GALLERY_L_PNG$" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">MacBook Pro</h5>
                                    <!-- Product price-->
                                    ₩3,360,690
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">View options</a></div>
                            </div>
                        </div>
                    </div>
                   
                </div>
            </div>
        </section>

		
        
        <jsp:include page="./includes/footer.jsp" />

    </body>
</html>
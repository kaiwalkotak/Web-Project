<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>

<jsp:include page="head.jsp"></jsp:include>


<body>

	<!-- Preloader -->
	<!-- <div id="preloader">
        <div id="status"></div>
    </div> -->
	<!-- Preloader Ends -->

	<jsp:include page="header-1.jsp"></jsp:include>

	<!-- Banner start -->
	<section class="swiper-banner">
		<div class="slider">
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<c:forEach var="tableDetails" items="${bannerlist}" varStatus="cnt">
						<tr id="mainPrdTr_${tableDetails[0]}">
							<c:forEach begin="0" end="${fn:length(tableDetails)}"
								varStatus="dataIndex">
								<c:if test="${dataIndex.index eq 0}">
								<div class="swiper-slide" style="background-image:url(${pageContext.request.contextPath}/resources/${tableDetails[0]}">
									<div class="swiper-content"
										data-animation="animated fadeInDown">
										<h2>${tableDetails[1]}</h2>
										<h1>${tableDetails[2]}</h1>
										<a href="${pageContext.request.contextPath}/destinationZones/0" class="btn-blue btn-red">View Our Tour</a>
									</div>
								</div>
								</c:if>
								
							</c:forEach>
					</c:forEach>
					<div class="swiper-slide"
						style="background-image:url(${pageContext.request.contextPath}/resources/website/images/slider/slider1.jpg)">
						<div class="swiper-content" data-animation="animated fadeInDown">
							<h2>Welcome To</h2>
							<h1>Karma Resorts and Hospitality</h1>
							<a href="${pageContext.request.contextPath}/destinationZones/0"
								class="btn-blue btn-red">View Our Tour</a>
						</div>
					</div>
					<%-- <div class="swiper-slide"
						style="background-image:url(${pageContext.request.contextPath}/resources/website/images/slider/slider8.jpg)">
						<div class="swiper-content" data-animation="animated fadeInRight">
							<h2>India's unique spirit of hospitality.</h2>
							<h1>feel the freedom to travel</h1>
							<a href="${pageContext.request.contextPath}/destinationZones/0"
								class="btn-blue btn-red">View Our Tour</a>
						</div>
					</div>
					<div class="swiper-slide"
						style="background-image:url(${pageContext.request.contextPath}/resources/website/images/slider/slider3.jpg)">
						<div class="swiper-content" data-animation="animated fadeInUp">
							<h2>Cost friendly packages on your way...</h2>
							<h1>Explore Dream Destination</h1>
							<a href="${pageContext.request.contextPath}/destinationZones/0"
								class="btn-blue btn-red">View Our Tour</a>
						</div>
					</div> --%>
				</div>
			</div>
			<!-- Add Arrows -->
			<div class="swiper-button-next"></div>
			<div class="swiper-button-prev"></div>
			<div class="overlay"></div>
		</div>
	</section>
	<!-- Banner Ends -->


	<!-- Search Box -->
	<!--<div class="search-box clearfix bg-white">
        <div class="container">
            <div class="search-outer">
                <div class="search-content">
                    <form>
                        <div class="row">
                            <div class="col-md-3 col-xs-6">
                                <div class="search-ad">
                                    <p>Find Your <span>Holiday</span></p>
                                    <i class="flaticon-sun-umbrella "></i>
                                </div>
                            </div>
                            <div class="col-md-3 col-xs-6">
                                <div class="table_item">
                                    <div class="form-group">
                                        <select name="custom-select-1" class="selectpicker form-control" tabindex="1">
                                            <option value="0">Destination</option>
                                            <option value="1">0</option>
                                            <option value="2">1</option>
                                            <option value="3">2</option>
                                            <option value="4">3</option>
                                            <option value="5">4</option>
                                        </select>
                                        <i class="flaticon-maps-and-flags"></i>
                                    </div>
                                    <div class="form-group  form-icon">
                                        <select name="custom-select-2" class="selectpicker form-control" tabindex="1">
                                            <option value="0">Type</option>
                                            <option value="1">0</option>
                                            <option value="2">1</option>
                                            <option value="3">2</option>
                                            <option value="4">3</option>
                                            <option value="5">4</option>
                                        </select>
                                        <i class="flaticon-box"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 col-xs-6">
                                <div class="table_item">
                                    <div class="form-group">
                                        <div class='input-group date' id='datetimepicker1'>
                                            <input type='text' class="form-control" value="dd-mm-yyyy" />
                                            <i class="flaticon-calendar"></i>
                                            <span class="input-group-addon">
                                                <i class="fa fa-calendar" aria-hidden="true"></i>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="form-group form-icon">
                                        <div class='input-group date' id='datetimepicker2'>
                                            <input type='text' class="form-control" value="dd-mm-yyyy" />
                                            <i class="flaticon-calendar"></i>
                                            <span class="input-group-addon">
                                                <i class="fa fa-calendar" aria-hidden="true"></i>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 col-xs-6">
                                <div class="table_item table-item-slider">
                                    <div class="range-slider">
                                        <div data-min="0" data-max="2000" data-unit="$" data-min-name="min_price" data-max-name="max_price" class="range-slider-ui ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all" aria-disabled="false">
                                            <span class="min-value">0 $</span> 
                                            <span class="max-value">2000 $</span>
                                            <div class="ui-slider-range ui-widget-header ui-corner-all" style="left: 0%; width: 100%;"></div>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="search">
                                        <a href="#" class="btn-blue btn-red">SEARCH</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form> 
                </div>
            </div>
        </div>
    </div>-->
	<!-- Search Box Ends -->


	<section class="tour-cta">
		<div class="container">
			<div class="tour-cta-main">
				<div class="row">
					<div class="col-sm-6">
						<div class="cta-content">
							<h3>It's A Big World Out There...</h3>
							<h2>KARMA RESORTS AND HOSPITALITY</h2>
							<p style="text-align: justify;">Karma Resorts and Hospitality
								is synonymous to creating a magical experience for your
								exclusively well-planned holidays. Karma Resorts and Hospitality
								provides you with an exclusive luxury holiday at surprisingly
								low prices. With the most intimate experiences, personalized
								residences, dining, and enchanting surroundings, we aim to bring
								you the greatest joy without stress.</p>
							<p style="text-align: justify;">Our destinations give you
								access to a place for all ages, be it families with children,
								couples at all stages of life, families in the need for
								reunification, classmates celebrating a certain age together...
							</p>
							<p style="text-align: justify;">Karma Resorts and Hospitality
								is synonymous to creating a magical experience for your
								exclusively well-planned holidays.</p>
							<a href="${pageContext.request.contextPath}/about"
								class="btn-blue btn-style-1">Read More</a>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="video-content">
							<div class="video-thumbnail">
								<img
									src="${pageContext.request.contextPath}/resources/website/images/grid2.jpg"
									alt="">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<!-- Amazing Tours -->
	<section class="amazing-tours">
		<div class="container">
			<div class="section-title text-center">
				<h2>OUR MOST POPULAR DOMESTIC DESTINATION</h2>
				<div class="section-icon">
					<i class="flaticon-diamond"></i>
				</div>
				<p>A beautiful list of best places to Visit in India that you
					need to visit with your best friends, family members and experience
					a magical journey of a lifetime!...</p>
			</div>
			<div class="row">
				<div class="col-md-6 col-xs-12">
					<div class="at-item box-item">
						<div class="at-image">
							<img
								src="${pageContext.request.contextPath}/resources/website/images/at2.jpg"
								alt="Image">
							<div class="at-overlay"></div>
						</div>
						<div class="at-content">
							<!-- <h3><a href="${pageContext.request.contextPath}/resort-2">Mussoorie</a></h3> -->
							<h3>
								<a href="#!">Mussoorie</a>
							</h3>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-xs-6">
					<div class="at-item box-item">
						<div class="at-image">
							<img
								src="${pageContext.request.contextPath}/resources/website/images/at6.jpg"
								alt="Image">
							<div class="at-overlay"></div>
						</div>
						<div class="at-content">
							<h3>
								<a href="#!">Himachal Pradesh</a>
							</h3>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-xs-6">
					<div class="at-item box-item">
						<div class="at-image">
							<img
								src="${pageContext.request.contextPath}/resources/website/images/at5.jpg"
								alt="Image">
							<div class="at-overlay"></div>
						</div>
						<div class="at-content">
							<h3>
								<a href="#!">Abad Brookside Lakkidi, Wayanad</a>
							</h3>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3 col-xs-6">
					<div class="at-item box-item">
						<div class="at-image">
							<img
								src="${pageContext.request.contextPath}/resources/website/images/at1.jpg"
								alt="Image">
							<div class="at-overlay"></div>
						</div>
						<div class="at-content">
							<h3>
								<a href="#!">Kualumpur</a>
							</h3>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-xs-6">
					<div class="at-item box-item">
						<div class="at-image">
							<img
								src="${pageContext.request.contextPath}/resources/website/images/at3.jpg"
								alt="Image">
							<div class="at-overlay"></div>
						</div>
						<div class="at-content">
							<h3>
								<a href="#!">Kerala</a>
							</h3>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-xs-12">
					<div class="at-item box-item">
						<div class="at-image">
							<img
								src="${pageContext.request.contextPath}/resources/website/images/at4.jpg"
								alt="Image">
							<div class="at-overlay"></div>
						</div>
						<div class="at-content">
							<h3>
								<a href="#!">Udaipur</a>
							</h3>
						</div>
					</div>
				</div>
			</div>
			<div class="row" style="text-align: center;">
				<!--   <a href="#!" class="btn-blue btn-style-1" >Read More</a> -->
			</div>

		</div>
	</section>
	<!-- Amazing Tours Ends -->


	<!-- Deals -->
	<section class="deals">
		<div class="container">
			<div class="section-title section-title-white text-center">
				<h2>TOP INTERNATIONAL DESTINATION</h2>
				<div class="section-icon">
					<i class="flaticon-diamond"></i>
				</div>
				<p>Traveling to amazing places when you're young will change
					your outlook, your worldview, your mindset - your entire life!...</p>
			</div>
			<div class="deals-outer">
				<div class="row deals-slider slider-button">
					<div class="col-md-3">
						<div class="deals-item">
							<div class="deals-item-outer">
								<div class="deals-image">
									<img
										src="${pageContext.request.contextPath}/resources/website/images/international/1.jpg"
										alt="Image">
								</div>
								<div class="deal-content">
									<div class="deal-rating">
										<span class="fa fa-star checked"></span> <span
											class="fa fa-star checked"></span> <span
											class="fa fa-star checked"></span> <span
											class="fa fa-star checked"></span> <span
											class="fa fa-star checked"></span>
									</div>
									<h3>Dubai</h3>
									<!--  <a href="${pageContext.request.contextPath}/enquiry" class="btn-blue btn-red"> Enquire Now </a>-->
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="deals-item">
							<div class="deals-item-outer">
								<div class="deals-image">
									<img
										src="${pageContext.request.contextPath}/resources/website/images/international/2.jpg"
										alt="Image">
								</div>
								<div class="deal-content">
									<div class="deal-rating">
										<span class="fa fa-star checked"></span> <span
											class="fa fa-star checked"></span> <span
											class="fa fa-star checked"></span> <span
											class="fa fa-star checked"></span> <span
											class="fa fa-star checked"></span>
									</div>
									<h3>Malaysia</h3>
									<!--  <a href="${pageContext.request.contextPath}/enquiry" class="btn-blue btn-red"> Enquire Now </a>-->
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="deals-item">
							<div class="deals-item-outer">
								<div class="deals-image">
									<img
										src="${pageContext.request.contextPath}/resources/website/images/international/3.jpg"
										alt="Image">
								</div>
								<div class="deal-content">
									<div class="deal-rating">
										<span class="fa fa-star checked"></span> <span
											class="fa fa-star checked"></span> <span
											class="fa fa-star checked"></span> <span
											class="fa fa-star checked"></span> <span
											class="fa fa-star checked"></span>
									</div>
									<h3>Newzealand</h3>
									<!--  <a href="${pageContext.request.contextPath}/enquiry" class="btn-blue btn-red"> Enquire Now </a>-->
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="deals-item">
							<div class="deals-item-outer">
								<div class="deals-image">
									<img
										src="${pageContext.request.contextPath}/resources/website/images/international/4.jpg"
										alt="Image">
								</div>
								<div class="deal-content">
									<div class="deal-rating">
										<span class="fa fa-star checked"></span> <span
											class="fa fa-star checked"></span> <span
											class="fa fa-star checked"></span> <span
											class="fa fa-star checked"></span> <span
											class="fa fa-star checked"></span>
									</div>
									<h3>Australia</h3>
									<!--  <a href="${pageContext.request.contextPath}/enquiry" class="btn-blue btn-red"> Enquire Now </a>-->
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="deals-item">
							<div class="deals-item-outer">
								<div class="deals-image">
									<img
										src="${pageContext.request.contextPath}/resources/website/images/international/5.jpg"
										alt="Image">
								</div>
								<div class="deal-content">
									<div class="deal-rating">
										<span class="fa fa-star checked"></span> <span
											class="fa fa-star checked"></span> <span
											class="fa fa-star checked"></span> <span
											class="fa fa-star checked"></span> <span
											class="fa fa-star checked"></span>
									</div>
									<h3>Paris</h3>
									<!--  <a href="${pageContext.request.contextPath}/enquiry" class="btn-blue btn-red"> Enquire Now </a>-->
								</div>
							</div>
						</div>
					</div>


					<div class="col-md-3">
						<div class="deals-item">
							<div class="deals-item-outer">
								<div class="deals-image">
									<img
										src="${pageContext.request.contextPath}/resources/website/images/international/8.jpg"
										alt="Image">
								</div>
								<div class="deal-content">
									<div class="deal-rating">
										<span class="fa fa-star checked"></span> <span
											class="fa fa-star checked"></span> <span
											class="fa fa-star checked"></span> <span
											class="fa fa-star checked"></span> <span
											class="fa fa-star checked"></span>
									</div>
									<h3>Florida</h3>
									<!--  <a href="${pageContext.request.contextPath}/enquiry" class="btn-blue btn-red"> Enquire Now </a>-->
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="deals-item">
							<div class="deals-item-outer">
								<div class="deals-image">
									<img
										src="${pageContext.request.contextPath}/resources/website/images/international/9.jpg"
										alt="Image">
								</div>
								<div class="deal-content">
									<div class="deal-rating">
										<span class="fa fa-star checked"></span> <span
											class="fa fa-star checked"></span> <span
											class="fa fa-star checked"></span> <span
											class="fa fa-star checked"></span> <span
											class="fa fa-star checked"></span>
									</div>
									<h3>Amsterdam</h3>
									<!--  <a href="${pageContext.request.contextPath}/enquiry" class="btn-blue btn-red"> Enquire Now </a>-->
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="deals-item">
							<div class="deals-item-outer">
								<div class="deals-image">
									<img
										src="${pageContext.request.contextPath}/resources/website/images/international/10.jpg"
										alt="Image">
								</div>
								<div class="deal-content">
									<div class="deal-rating">
										<span class="fa fa-star checked"></span> <span
											class="fa fa-star checked"></span> <span
											class="fa fa-star checked"></span> <span
											class="fa fa-star checked"></span> <span
											class="fa fa-star checked"></span>
									</div>
									<h3>Srilanka</h3>
									<!--  <a href="${pageContext.request.contextPath}/enquiry" class="btn-blue btn-red"> Enquire Now </a>-->
								</div>
							</div>
						</div>
					</div>


					<div class="col-md-3">
						<div class="deals-item">
							<div class="deals-item-outer">
								<div class="deals-image">
									<img
										src="${pageContext.request.contextPath}/resources/website/images/international/13.jpg"
										alt="Image">
								</div>
								<div class="deal-content">
									<div class="deal-rating">
										<span class="fa fa-star checked"></span> <span
											class="fa fa-star checked"></span> <span
											class="fa fa-star checked"></span> <span
											class="fa fa-star checked"></span> <span
											class="fa fa-star checked"></span>
									</div>
									<h3>Singapore</h3>
									<!--  <a href="${pageContext.request.contextPath}/enquiry" class="btn-blue btn-red"> Enquire Now </a>-->
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="deals-item">
							<div class="deals-item-outer">
								<div class="deals-image">
									<img
										src="${pageContext.request.contextPath}/resources/website/images/international/14.jpg"
										alt="Image">
								</div>
								<div class="deal-content">
									<div class="deal-rating">
										<span class="fa fa-star checked"></span> <span
											class="fa fa-star checked"></span> <span
											class="fa fa-star checked"></span> <span
											class="fa fa-star checked"></span> <span
											class="fa fa-star checked"></span>
									</div>
									<h3>Phuket</h3>
									<!--  <a href="${pageContext.request.contextPath}/enquiry" class="btn-blue btn-red"> Enquire Now </a>-->
								</div>
							</div>
						</div>
					</div>


				</div>
			</div>
		</div>
		<div class="section-overlay"></div>
	</section>
	<!-- Deals Ends -->




	<!-- Popular Packages -->
	<!-- Our Affiliate Resort -->
	<section class="popular-packages">
		<div class="container">
			<div class="section-title text-center">
				<h2>Our Affiliate Resort</h2>
				<div class="section-icon">
					<i class="flaticon-diamond"></i>
				</div>
				<p>The most stunning and beautiful places in the world for
					outing....</p>
			</div>
			<div class="row package-slider slider-button">
				<div class="col-sm-4">
					<div class="package-item">
						<div class="package-image">
							<img
								src="${pageContext.request.contextPath}/resources/website/images/resort/resort-1.jpg"
								alt="Image">
						</div>
						<div class="package-content" style="text-align: center;">
							<h3>Durga Residency</h3>
							<p>
								<i class="flaticon-maps-and-flags"></i> Katra, Jammu
							</p>
							<div class="package-info">
								<a href="${pageContext.request.contextPath}/DurgaResidency"
									class="btn-blue btn-red">View more details</a>
							</div>
						</div>
					</div>
				</div>

				<!--  <div class="col-sm-4">
                    <div class="package-item">
                        <div class="package-image">
                            <img src="${pageContext.request.contextPath}/resources/website/images/resort/resort-3.jpg" alt="Image">
                        </div>
                        <div class="package-content" style="text-align: center;">
                            <h3>Ramada</h3>
                            <p><i class="flaticon-maps-and-flags"></i> Allepey</p>
                            <div class="package-info">
                                <a href="${pageContext.request.contextPath}/ramada" class="btn-blue btn-red">View more details</a>
                            </div>
                        </div>
                    </div>
                </div> -->
				<div class="col-sm-4">
					<div class="package-item">
						<div class="package-image">
							<img
								src="${pageContext.request.contextPath}/resources/website/images/resort/resort-4.jpg"
								alt="Image">
						</div>
						<div class="package-content" style="text-align: center;">
							<h3>Park Regis</h3>
							<p>
								<i class="flaticon-maps-and-flags"></i> Dubai
							</p>
							<div class="package-info">
								<a href="${pageContext.request.contextPath}/ParkRegis"
									class="btn-blue btn-red">View more details</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="package-item">
						<div class="package-image">
							<img
								src="${pageContext.request.contextPath}/resources/website/images/resort/resort-5.jpg"
								alt="Image">
						</div>
						<div class="package-content" style="text-align: center;">
							<h3>Kohkoon Beach Resort</h3>
							<p>
								<i class="flaticon-maps-and-flags"></i> Koh Samui
							</p>
							<div class="package-info">
								<a href="${pageContext.request.contextPath}/KohkoonBeachResort"
									class="btn-blue btn-red">View more details</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="package-item">
						<div class="package-image">
							<img
								src="${pageContext.request.contextPath}/resources/website/images/resort/resort-6.jpg"
								alt="Image">
						</div>
						<div class="package-content" style="text-align: center;">
							<h3>The Mama's Resort and Camp</h3>
							<p>
								<i class="flaticon-maps-and-flags"></i> Jaisalmer
							</p>
							<div class="package-info">
								<a
									href="${pageContext.request.contextPath}/TheMamasResortandCamp"
									class="btn-blue btn-red">View more details</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="package-item">
						<div class="package-image">
							<img
								src="${pageContext.request.contextPath}/resources/website/images/resort/resort-7.jpg"
								alt="Image">
						</div>
						<div class="package-content" style="text-align: center;">
							<h3>UNA Smart The Watergate</h3>
							<p>
								<i class="flaticon-maps-and-flags"></i> Bhimtal
							</p>
							<div class="package-info">
								<a href="${pageContext.request.contextPath}/UNA"
									class="btn-blue btn-red">View more details</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="package-item">
						<div class="package-image">
							<img
								src="${pageContext.request.contextPath}/resources/website/images/resort/resort-8.jpg"
								alt="Image">
						</div>
						<div class="package-content" style="text-align: center;">
							<h3>UNA Comfort Queen Plaza</h3>
							<p>
								<i class="flaticon-maps-and-flags"></i> Mussoorie
							</p>
							<div class="package-info">
								<a href="${pageContext.request.contextPath}/QueenPlaza"
									class="btn-blue btn-red">View more details</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="package-item">
						<div class="package-image">
							<img
								src="${pageContext.request.contextPath}/resources/website/images/resort/resort-9.jpg"
								alt="Image">
						</div>
						<div class="package-content" style="text-align: center;">
							<h3>UNA Smart Doon Castle</h3>
							<p>
								<i class="flaticon-maps-and-flags"></i> Dehradun
							</p>
							<div class="package-info">
								<a href="${pageContext.request.contextPath}/doon"
									class="btn-blue btn-red">View more details</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Popular Packages Ends -->




	<!-- Testimonials -->
	<section class="testimonial-1">
		<div class="container">
			<div class="row">
				<div class="col-md-6" style="margin-top: 8%">
					<div class="testimonial-inner" style="top: -50px; bottom: 0px;">
						<!-- Paradise Slider -->
						<div id="testimonial_095"
							class="carousel slide testimonial_095_indicators testimonial_095_control_button thumb_scroll_x swipe_x ps_easeOutSine"
							data-ride="carousel" data-pause="hover" data-interval="5000"
							data-duration="2000">

							<!-- Indicators -->
							<ol class="carousel-indicators">
								<li data-target="#testimonial_095" data-slide-to="0"
									class="active"></li>
								<li data-target="#testimonial_095" data-slide-to="1"></li>
								<li data-target="#testimonial_095" data-slide-to="2"></li>
							</ol>

							<!-- Wrapper For Slides -->
							<div class="carousel-inner" role="listbox">
								<!-- First Slide -->
								<div class="item active">
									<!-- Text Layer -->
									<div class="testimonial_095_slide video-content ">
										<iframe width="300" height="250"
											src="https://www.youtube.com/embed/UulTA9cabDA?rel=0"
											allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
											allowfullscreen></iframe>
									</div>
									<!-- /Text Layer -->
								</div>
								<!-- /item -->
								<!-- End of First Slide -->

								<!-- Second Slide -->
								<div class="item">
									<!-- Text Layer -->
									<div class="testimonial_095_slide video-content">
										<iframe width="300" height="250"
											src="https://www.youtube.com/embed/CLJZ7FCAOhw?rel=0"
											allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
											allowfullscreen></iframe>
									</div>
									<!-- /Text Layer -->
								</div>
								<!-- /item -->
								<!-- End of Second Slide -->

								<!-- Third Slide -->
								<div class="item">
									<!-- Text Layer -->
									<div class="testimonial_095_slide video-content">
										<iframe width="300" height="250"
											src="https://www.youtube.com/embed/LiyoXFKNFH4?rel=0"
											allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
											allowfullscreen></iframe>
									</div>
									<!-- /Text Layer -->
								</div>
								<!-- /item -->
								<!-- End of Third Slide -->
								<div class="item">
									<!-- Text Layer -->
									<div class="testimonial_095_slide video-content">
										<iframe width="300" height="250"
											src="https://www.youtube.com/embed/dLMgBLSOJ3s?rel=0"
											allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
											allowfullscreen></iframe>
									</div>
									<!-- /Text Layer -->
								</div>
								<!-- /item -->
								<div class="item">
									<!-- Text Layer -->
									<div class="testimonial_095_slide video-content">
										<iframe width="300" height="250"
											src="https://www.youtube.com/embed/f0d5PaSHuVA?rel=0"
											allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
											allowfullscreen></iframe>
									</div>
									<!-- /Text Layer -->
								</div>
								<!-- /item -->
								<div class="item">
									<!-- Text Layer -->
									<div class="testimonial_095_slide video-content">
										<iframe width="300" height="250"
											src="https://www.youtube.com/embed/Iblfuolc3dM?rel=0"
											allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
											allowfullscreen></iframe>
									</div>
									<!-- /Text Layer -->
								</div>
								<!-- /item -->

							</div>
							<!-- End of Wrapper For Slides -->

							<!-- Left Control -->
							<a class="left carousel-control" href="#testimonial_095"
								role="button" data-slide="prev"> <span
								class="fa fa-chevron-left"></span>
							</a>

							<!-- Right Control -->
							<a class="right carousel-control" href="#testimonial_095"
								role="button" data-slide="next"> <span
								class="fa fa-chevron-right"></span>
							</a>

						</div>
						<!-- End Paradise Slider -->
					</div>
				</div>
				<div class="col-md-6">
					<div class="testimonial-inner">
						<div class="testimonial-title">
							<h3>Testimonials</h3>
						</div>
						<!-- Paradise Slider -->
						<div id="testimonial_095"
							class="carousel slide testimonial_095_indicators testimonial_095_control_button thumb_scroll_x swipe_x ps_easeOutSine"
							data-ride="carousel" data-pause="hover" data-interval="5000"
							data-duration="2000">

							<!-- Indicators -->
							<ol class="carousel-indicators">
								<li data-target="#testimonial_095" data-slide-to="0"
									class="active"></li>
								<li data-target="#testimonial_095" data-slide-to="1"></li>
								<li data-target="#testimonial_095" data-slide-to="2"></li>
							</ol>

							<!-- Wrapper For Slides -->
							<div class="carousel-inner" role="listbox">
								<!-- First Slide -->
								<div class="item active">
									<!-- Text Layer -->
									<div class="testimonial_095_slide">
										<p>Stay was excellent & very serene enjoyed the stay,service and hospitality.</p>
										<div class="deal-rating">
											<span class="fa fa-star checked"></span> <span
												class="fa fa-star checked"></span> <span
												class="fa fa-star checked"></span> <span
												class="fa fa-star-o"></span> <span class="fa fa-star-o"></span>
										</div>
										<h5>
											<a href="#">Nutan Patel</a>
										</h5>
									</div>
									<!-- /Text Layer -->
								</div>
								<!-- /item -->
								<!-- End of First Slide -->

								<!-- Second Slide -->
								<div class="item">
									<!-- Text Layer -->
									<div class="testimonial_095_slide">
										<p>It was a really awesome trip to Andaman from Karma
											Resorts and Hospitality, great management and service,
											especially gujarati food in paradise hotel-portblair...
											Awesome food... Great service...</p>
										<div class="deal-rating">
											<span class="fa fa-star checked"></span> <span
												class="fa fa-star checked"></span> <span
												class="fa fa-star checked"></span> <span
												class="fa fa-star-o"></span> <span class="fa fa-star-o"></span>
										</div>
										<h5>
											<a href="#">Sandip Gupta</a>
										</h5>
									</div>
									<!-- /Text Layer -->
								</div>
								<!-- /item -->
								<!-- End of Second Slide -->

								<!-- Third Slide -->
								<div class="item">
									<!-- Text Layer -->
									<div class="testimonial_095_slide">
										<p>Package for Andaman and Nicobar of Karma Resorts and
											Hospitality was really nice. We enjoyed a lot. Service and
											food was also very good.</p>
										<div class="deal-rating">
											<span class="fa fa-star checked"></span> <span
												class="fa fa-star checked"></span> <span
												class="fa fa-star checked"></span> <span
												class="fa fa-star-o"></span> <span class="fa fa-star-o"></span>
										</div>
										<h5>
											<a href="#">Jindal Trivedi</a>
										</h5>
									</div>
									<!-- /Text Layer -->
								</div>
								<!-- /item -->
								<!-- End of Third Slide -->

							</div>
							<!-- End of Wrapper For Slides -->

							<!-- Left Control -->
							<a class="left carousel-control" href="#testimonial_095"
								role="button" data-slide="prev"> <span
								class="fa fa-chevron-left"></span>
							</a>

							<!-- Right Control -->
							<a class="right carousel-control" href="#testimonial_095"
								role="button" data-slide="next"> <span
								class="fa fa-chevron-right"></span>
							</a>

						</div>
						<!-- End Paradise Slider -->
					</div>
				</div>
			</div>
		</div>
		<div class="testimonial-overlay"></div>
	</section>
	<!-- Testimonials Ends -->
	<section class="tour-cta">
		<div class="container">
			<div class="section-title text-center">
				<h2>Bamboo Saa Resort & Spa, Rajasthan</h2>
				<div class="section-icon">
					<i class="flaticon-diamond"></i>
				</div>
				<p>The most stunning and beautiful places in the world for
					outing....</p>
			</div>

			<div class="tour-cta-main">
				<div class="row">
					<div class="col-sm-6">
						<div class="gallery detail-box">
							<!-- Paradise Slider -->
							<div id="in_th_030"
								class="carousel slide in_th_brdr_img_030 thumb_scroll_x swipe_x ps_easeOutQuint"
								data-ride="carousel" data-pause="hover" data-interval="4000"
								data-duration="2000">
								<!-- Indicators -->
								<ol class="carousel-indicators">
									<!-- 1st Indicator -->
									<li data-target="#in_th_030" data-slide-to="0" class="active">
										<!-- 1st Indicator Image --> <img
										src="${pageContext.request.contextPath}/resources/website/images/resort/resort-11.jpg"
										alt="in_th_030_01_sm" />
									</li>
									<!-- 2nd Indicator -->
									<li data-target="#in_th_030" data-slide-to="1">
										<!-- 2nd Indicator Image --> <img
										src="${pageContext.request.contextPath}/resources/website/images/resort/resort-12.jpg"
										alt="in_th_030_02_sm" />
									</li>
									<!-- 3rd Indicator -->
									<li data-target="#in_th_030" data-slide-to="2">
										<!-- 3rd Indicator Image --> <img
										src="${pageContext.request.contextPath}/resources/website/images/resort/resort-13.jpg"
										alt="in_th_030_03_sm" />
									</li>
								</ol>
								<!-- /Indicators -->
								<!-- Wrapper For Slides -->
								<div class="carousel-inner" role="listbox">
									<!-- First Slide -->
									<div class="item active">
										<!-- Slide Background -->
										<img
											src="${pageContext.request.contextPath}/resources/website/images/resort/resort-11.jpg"
											alt="in_th_030_01" />
									</div>
									<!-- End of Slide -->
									<!-- Second Slide -->
									<div class="item">
										<!-- Slide Background -->
										<img
											src="${pageContext.request.contextPath}/resources/website/images/resort/resort-12.jpg"
											alt="in_th_030_02" />
									</div>
									<!-- End of Slide -->
									<!-- Third Slide -->
									<div class="item">
										<!-- Slide Background -->
										<img
											src="${pageContext.request.contextPath}/resources/website/images/resort/resort-13.jpg"
											alt="in_th_030_03" />
									</div>
								</div>
								<!-- End of Wrapper For Slides -->
							</div>
							<!-- End Paradise Slider -->
						</div>
					</div>
					<div class="col-sm-6">
						<div class="video-content">
							<div class="video-thumbnail">
								<iframe width="560" height="380"
									src="https://www.youtube.com/embed/67gnVQveQCE?rel=0" frameborder="0"
									allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
									allowfullscreen></iframe>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<section class="tour-cta">
		<div class="container">
			<div class="section-title text-center">
				<h2>KGH Kathmandu</h2>
				<div class="section-icon">
					<i class="flaticon-diamond"></i>
				</div>
				<p>The most stunning and beautiful places in the world for
					outing....</p>
			</div>

			<div class="tour-cta-main">
				<div class="row">
					<div class="col-sm-6">
						<div class="video-content">
							<div class="video-thumbnail">
								<iframe width="560" height="380"
									src="https://www.youtube.com/embed/yW2_-hv_KP4?rel=0" frameborder="0"
									allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
									allowfullscreen></iframe>
							</div>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="gallery detail-box">
							<!-- Paradise Slider -->
							<div id="in_th_030"
								class="carousel slide in_th_brdr_img_030 thumb_scroll_x swipe_x ps_easeOutQuint"
								data-ride="carousel" data-pause="hover" data-interval="4000"
								data-duration="2000">
								<!-- Indicators -->
								<ol class="carousel-indicators">
									<!-- 1st Indicator -->
									<li data-target="#in_th_030" data-slide-to="0" class="active">
										<!-- 1st Indicator Image --> <img
										src="${pageContext.request.contextPath}/resources/website/images/resort/resort-14.jpg"
										alt="in_th_030_01_sm" />
									</li>
									<!-- 2nd Indicator -->
									<li data-target="#in_th_030" data-slide-to="1">
										<!-- 2nd Indicator Image --> <img
										src="${pageContext.request.contextPath}/resources/website/images/resort/resort-15.jpg"
										alt="in_th_030_02_sm" />
									</li>
									<!-- 3rd Indicator -->
									<li data-target="#in_th_030" data-slide-to="2">
										<!-- 3rd Indicator Image --> <img
										src="${pageContext.request.contextPath}/resources/website/images/resort/resort-16.jpg"
										alt="in_th_030_03_sm" />
									</li>
								</ol>
								<!-- /Indicators -->
								<!-- Wrapper For Slides -->
								<div class="carousel-inner" role="listbox">
									<!-- First Slide -->
									<div class="item active">
										<!-- Slide Background -->
										<img
											src="${pageContext.request.contextPath}/resources/website/images/resort/resort-14.jpg"
											alt="in_th_030_01" />
									</div>
									<!-- End of Slide -->
									<!-- Second Slide -->
									<div class="item">
										<!-- Slide Background -->
										<img
											src="${pageContext.request.contextPath}/resources/website/images/resort/resort-15.jpg"
											alt="in_th_030_02" />
									</div>
									<!-- End of Slide -->
									<!-- Third Slide -->
									<div class="item">
										<!-- Slide Background -->
										<img
											src="${pageContext.request.contextPath}/resources/website/images/resort/resort-16.jpg"
											alt="in_th_030_03" />
									</div>
								</div>
								<!-- End of Wrapper For Slides -->
							</div>
							<!-- End Paradise Slider -->
						</div>
					</div>

				</div>
			</div>
		</div>
	</section>


	<section class="tour-cta">
		<div class="container">
			<div class="section-title text-center">
				<h2>Coorg Cliffs Resort</h2>
				<div class="section-icon">
					<i class="flaticon-diamond"></i>
				</div>
				<p>The most stunning and beautiful places in the world for
					outing....</p>
			</div>

			<div class="tour-cta-main">
				<div class="row">
					<div class="col-sm-6">
						<div class="gallery detail-box">
							<!-- Paradise Slider -->
							<div id="in_th_030"
								class="carousel slide in_th_brdr_img_030 thumb_scroll_x swipe_x ps_easeOutQuint"
								data-ride="carousel" data-pause="hover" data-interval="4000"
								data-duration="2000">
								<!-- Indicators -->
								<ol class="carousel-indicators">
									<!-- 1st Indicator -->
									<li data-target="#in_th_030" data-slide-to="0" class="active">
										<!-- 1st Indicator Image --> <img
										src="${pageContext.request.contextPath}/resources/website/images/resort/resort-17.jpg"
										alt="in_th_030_01_sm" />
									</li>
									<!-- 2nd Indicator -->
									<li data-target="#in_th_030" data-slide-to="1">
										<!-- 2nd Indicator Image --> <img
										src="${pageContext.request.contextPath}/resources/website/images/resort/resort-18.jpg"
										alt="in_th_030_02_sm" />
									</li>
									<!-- 3rd Indicator -->
									<li data-target="#in_th_030" data-slide-to="2">
										<!-- 3rd Indicator Image --> <img
										src="${pageContext.request.contextPath}/resources/website/images/resort/resort-19.jpg"
										alt="in_th_030_03_sm" />
									</li>
								</ol>
								<!-- /Indicators -->
								<!-- Wrapper For Slides -->
								<div class="carousel-inner" role="listbox">
									<!-- First Slide -->
									<div class="item active">
										<!-- Slide Background -->
										<img
											src="${pageContext.request.contextPath}/resources/website/images/resort/resort-17.jpg"
											alt="in_th_030_01" />
									</div>
									<!-- End of Slide -->
									<!-- Second Slide -->
									<div class="item">
										<!-- Slide Background -->
										<img
											src="${pageContext.request.contextPath}/resources/website/images/resort/resort-18.jpg"
											alt="in_th_030_02" />
									</div>
									<!-- End of Slide -->
									<!-- Third Slide -->
									<div class="item">
										<!-- Slide Background -->
										<img
											src="${pageContext.request.contextPath}/resources/website/images/resort/resort-19.jpg"
											alt="in_th_030_03" />
									</div>
								</div>
								<!-- End of Wrapper For Slides -->
							</div>
							<!-- End Paradise Slider -->
						</div>
					</div>
					<div class="col-sm-6">
						<div class="video-content">
							<div class="video-thumbnail">
								<iframe width="560" height="380"
									src="https://www.youtube.com/embed/oifopdqrFT0?rel=0" frameborder="0"
									allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
									allowfullscreen></iframe>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>



	<!-- Blog -->
	<section class="blog">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="section-title text-center">
						<h2>Our Blog</h2>
						<div class="section-icon">
							<i class="flaticon-diamond"></i>
						</div>
						<p></p>
					</div>
				</div>
				<div class="col-sm-4 col-xs-12">
					<div class="blog-item">
						<iframe
							src="https://www.facebook.com/plugins/video.php?height=476&href=https%3A%2F%2Fwww.facebook.com%2FKarmasuitesandvillas%2Fvideos%2F268343611398875%2F&show_text=true&width=476"
							width="100%" height="600" style="border: none; overflow: hidden"
							scrolling="no" frameborder="0" allowfullscreen="true"
							allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share"
							allowFullScreen="true"></iframe>

					</div>
				</div>
				<div class="col-sm-4 col-xs-12">
					<div class="blog-item">
						<iframe
							src="https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2FKarmasuitesandvillas%2Fposts%2F266503164916253&width=500&show_text=true&height=640&appId"
							width="100%" height="600" style="border: none; overflow: hidden"
							scrolling="no" frameborder="0" allowfullscreen="true"
							allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share"></iframe>
					</div>
				</div>
				<div class="col-sm-4 col-xs-12">
					<div class="blog-item">
						<iframe
							src="https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2FKarmasuitesandvillas%2Fposts%2F255832799316623&width=500&show_text=true&height=640&appId"
							width="100%" height="600" style="border: none; overflow: hidden"
							scrolling="no" frameborder="0" allowfullscreen="true"
							allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share"></iframe>
					</div>
				</div>
				<div class="col-sm-4 col-xs-12">
					<div class="blog-item">
						<iframe
							src="https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2FKarmasuitesandvillas%2Fposts%2F252228633010373&width=500&show_text=true&height=640&appId"
							width="100%" height="600" style="border: none; overflow: hidden"
							scrolling="no" frameborder="0" allowfullscreen="true"
							allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share"></iframe>
					</div>
				</div>
				<div class="col-sm-4 col-xs-12">
					<div class="blog-item">
						<iframe
							src="https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2FKarmasuitesandvillas%2Fposts%2F250689043164332&width=500&show_text=true&height=640&appId"
							width="100%" height="600" style="border: none; overflow: hidden"
							scrolling="no" frameborder="0" allowfullscreen="true"
							allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share"></iframe>
					</div>
				</div>
				<div class="col-sm-4 col-xs-12">
					<div class="blog-item">
						<iframe
							src="https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2FKarmasuitesandvillas%2Fposts%2F250029073230329&width=500&show_text=true&height=634&appId"
							width="100%" height="600" style="border: none; overflow: hidden"
							scrolling="no" frameborder="0" allowfullscreen="true"
							allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share"></iframe>
					</div>
				</div>


			</div>
		</div>
	</section>
	<!-- Blog Ends -->


	<jsp:include page="footer.jsp"></jsp:include>


	<!-- Back to top start -->
	<div id="back-to-top">
		<a href="#"></a>
	</div>
	<!-- Back to top ends -->

	<jsp:include page="script.jsp"></jsp:include>



</body>

</html>
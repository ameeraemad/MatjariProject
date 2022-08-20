<x-ecommerce-layout>
 <!-- Breadcrumb Begin -->
 <div class="breadcrumb-option">
    <div class="container" style="background-color:white;">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb__links">
                    <a href="{{route('home')}}"><i class="fa fa-home"></i> {{__('home.home')}}</a>
                    <span>{{__('home.about_us')}}</span>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumb End -->
<!-- Start About Page  -->
<div class="about-box-main">
    <div class="container" style="background-color:white;">
        <div class="row">
            <div class="col-lg-6">
            <h2 class="noo-sh-title">{{data_get($page, 'intro'.app()->make('db_lang_suffix'))}}</h2>
           
                <br>
                <span>Zara Idea Store is an online store that offers a variety of products.

We always love to provide you with a unique and honest shopping service, from the beginning of displaying the products until their arrival to you, we follow every process of the sales stages carefully.

Our communication with you will not end with the delivery of the products, but rather we are honored to provide all after-sales services, where you can communicate with us at all times.
</span>            </div>
            <div class="contact__map">
            @if($page->image)
                <img src="{{asset('img/'.$page->image)}}" width="500" height="700">
                @else
                <img src="{{asset('assets/images/home_2.gif')}}" width="500" height="368px">
                @endif
        </div>
        </div>


    </div>
</div>
<!-- End About Page -->

</x-ecommerce-layout>

@extends('client.display.app')
@section('content')
    <main>
        <!-- Trending Area Start -->
        <div class="trending-area fix pt-25 gray-bg">
            <div class="container">
                <div class="trending-main">
                    <div class="row">
                        <div class="col-lg-8">
                            <!-- Trending Top -->
                            <div class="slider-active">
                                @foreach($data as $value)
                                    <!-- Single -->
                                    <div class="single-slider">
                                        <div class="trending-top mb-30">
                                            <div class="trend-top-img">
                                                <img
                                                    src="{{ asset('front-end/assets/img/trending/trending_top2.jpg') }}"
                                                    alt="">
                                                <div class="trend-top-cap">
                                                    <span class="bgr" data-animation="fadeInUp" data-delay=".2s"
                                                          data-duration="1000ms">Business</span>
                                                    <h2><a href="{{ route('blog',$value->slug) }}"
                                                           data-animation="fadeInUp"
                                                           data-delay=".4s"
                                                           data-duration="1000ms">{{ $value->title }}</a></h2>
                                                    <p data-animation="fadeInUp" data-delay=".6s"
                                                       data-duration="1000ms">
                                                        {{ $value->created_at->format('d M Y') }}
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                        <!-- Right content -->
                        <div class="col-lg-4">
                            <!-- Trending Top -->
                            <div class="row">
                                <div class="col-lg-12 col-md-6 col-sm-6">
                                    <div class="trending-top mb-30">
                                        <div class="trend-top-img">
                                            <img src="{{ asset('front-end/assets/img/trending/trending_top3.jpg') }}"
                                                 alt="">
                                            <div class="trend-top-cap trend-top-cap2">
                                                <span class="bgb">FASHION</span>
                                                <h2><a href="latest_news.html">Secretart for Economic Air
                                                        plane that looks like</a></h2>
                                                <p>by Alice cloe - Jun 19, 2020</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-12 col-md-6 col-sm-6">
                                    <div class="trending-top mb-30">
                                        <div class="trend-top-img">
                                            <img src="{{ asset('front-end/assets/img/trending/trending_top4.jpg') }}"
                                                 alt="">
                                            <div class="trend-top-cap trend-top-cap2">
                                                <span class="bgg">TECH </span>
                                                <h2><a href="latest_news.html">Secretart for Economic Air plane that
                                                        looks like</a></h2>
                                                <p>by Alice cloe - Jun 19, 2020</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="weekly2-news-area pt-50 pb-30 gray-bg">
            <div class="container">
                <div class="weekly2-wrapper">
                    <div class="row">
                        <!-- Banner -->
                        <div class="col-lg-3">
                            <div class="home-banner2 d-none d-lg-block">
                                <img src="{{ asset('front-end/assets/img/gallery/body_card2.png') }}" alt="">
                            </div>
                        </div>
                        <div class="col-lg-9">
                            <div class="slider-wrapper">
                                <!-- section Tittle -->
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="small-tittle mb-30">
                                            <h4>Most Popular</h4>
                                        </div>
                                    </div>
                                </div>
                                <!-- Slider -->
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="weekly2-news-active d-flex">
                                            @foreach($data as $value)
                                                <!-- Single -->
                                                <div class="weekly2-single">
                                                    <div class="weekly2-img">
                                                        <img
                                                            width="245px"
                                                            height="165px"
                                                            src="{{ asset('storage/'.$value->image) }}"
                                                            alt="">
                                                    </div>
                                                    <div class="weekly2-caption">
                                                        <h4><a href="{{ route('blog',$value->slug) }}">
                                                                {{ $value->title }}
                                                            </a>
                                                        </h4>
                                                        <p>
                                                            {{ $value->created_at->format('d M Y') }}
                                                        </p>
                                                    </div>
                                                </div>
                                                <!-- Single -->
                                            @endforeach

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Weekly-News -->
        <!--  Recent Articles start -->
        {{--        <div class="recent-articles pt-80 pb-80">--}}
        {{--            <div class="container">--}}
        {{--                <div class="recent-wrapper">--}}
        {{--                    <!-- section Tittle -->--}}
        {{--                    <div class="row">--}}
        {{--                        <div class="col-lg-12">--}}
        {{--                            <div class="section-tittle mb-30">--}}
        {{--                                <h3>Trending News</h3>--}}
        {{--                            </div>--}}
        {{--                        </div>--}}
        {{--                    </div>--}}
        {{--                    <div class="row">--}}
        {{--                        <div class="col-12">--}}
        {{--                            <div class="recent-active dot-style d-flex dot-style">--}}
        {{--                               @foreach($data as $value)--}}
        {{--                                    <!-- Single -->--}}
        {{--                                    <div class="single-recent">--}}
        {{--                                        <div class="what-img">--}}
        {{--                                            <img src="{{ asset('storage'.$value->image) }}" alt="">--}}
        {{--                                        </div>--}}
        {{--                                        <div class="what-cap">--}}
        {{--                                            <h4><a href="#"><h4><a href="{{ route('blog',$value->slug) }}">--}}
        {{--                                                        {{ $value->title }}--}}
        {{--                                                        </a></h4></a></h4>--}}
        {{--                                            <P>--}}
        {{--                                                {{ $value->created_at->format('d M Y') }}--}}
        {{--                                            </P>--}}
        {{--                                            <a class="popup-video btn-icon"--}}
        {{--                                               href="https://www.youtube.com/watch?v=1aP-TXUpNoU"><span--}}
        {{--                                                    class="flaticon-play-button"></span></a>--}}

        {{--                                        </div>--}}
        {{--                                    </div>--}}
        {{--                                    <!-- Single -->--}}
        {{--                               @endforeach--}}

        {{--                            </div>--}}
        {{--                        </div>--}}
        {{--                    </div>--}}
        {{--                </div>--}}
        {{--            </div>--}}
        {{--        </div>--}}
        <!--Recent Articles End -->
        <!-- Start Video Area -->
        <div class="youtube-area video-padding d-none d-sm-block">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="video-items-active">
                            <div class="video-items text-center">
                                <video controls>
                                    <source src="{{ asset('front-end/assets/video/news2.mp4') }}" type="video/mp4">
                                    Your browser does not support the video tag.
                                </video>
                            </div>
                            <div class="video-items text-center">
                                <video controls>
                                    <source src="{{ asset('front-end/assets/video/news1.mp4') }}" type="video/mp4">
                                    Your browser does not support the video tag.
                                </video>
                            </div>
                            <div class="video-items text-center">
                                <video controls>
                                    <source src="{{ asset('front-end/assets/video/news3.mp4') }}" type="video/mp4">
                                    Your browser does not support the video tag.
                                </video>
                            </div>
                            <div class="video-items text-center">
                                <video controls>
                                    <source src="{{ asset('front-end/assets/video/news1.mp4') }}" type="video/mp4">
                                    Your browser does not support the video tag.
                                </video>
                            </div>
                            <div class="video-items text-center">
                                <video controls>
                                    <source src="{{ asset('front-end/assets/video/news3.mp4') }}" type="video/mp4">
                                    Your browser does not support the video tag.
                                </video>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="video-info">
                    <div class="row">
                        <div class="col-12">
                            <div class="testmonial-nav text-center">
                                <div class="single-video">
                                    <video controls>
                                        <source src="{{ asset('front-end/assets/video/news2.mp4') }}" type="video/mp4">
                                        Your browser does not support the video tag.
                                    </video>
                                    <div class="video-intro">
                                        <h4>Old Spondon News - 2020 </h4>
                                    </div>
                                </div>
                                <div class="single-video">
                                    <video controls>
                                        <source src="{{ asset('front-end/assets/video/news1.mp4') }}" type="video/mp4">
                                        Your browser does not support the video tag.
                                    </video>
                                    <div class="video-intro">
                                        <h4>Banglades News Video </h4>
                                    </div>
                                </div>
                                <div class="single-video">
                                    <video controls>
                                        <source src="{{ asset('front-end/assets/video/news3.mp4') }}" type="video/mp4">
                                        Your browser does not support the video tag.
                                    </video>
                                    <div class="video-intro">
                                        <h4>Latest Video - 2020 </h4>
                                    </div>
                                </div>
                                <div class="single-video">
                                    <video controls>
                                        <source src="{{ asset('front-end/assets/video/news1.mp4') }}" type="video/mp4">
                                        Your browser does not support the video tag.
                                    </video>
                                    <div class="video-intro">
                                        <h4>Spondon News -2019 </h4>
                                    </div>
                                </div>
                                <div class="single-video">
                                    <video controls>
                                        <source src="{{ asset('front-end/assets/video/news3.mp4') }}" type="video/mp4">
                                        Your browser does not support the video tag.
                                    </video>
                                    <div class="video-intro">
                                        <h4>Latest Video - 2020</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Start Video area-->
        <!--   Weekly3-News start -->
        <div class="weekly3-news-area pt-80 pb-130">
            <div class="container">
                <div class="weekly3-wrapper">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="slider-wrapper">
                                <!-- Slider -->
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="weekly3-news-active dot-style d-flex">
                                            @foreach($data as $value)
                                                <div class="weekly3-single">
                                                    <div class="weekly3-img">
                                                        <img
                                                            width="270px"
                                                            height="176px"
                                                            src="{{ asset('storage/'.$value->image) }}"
                                                            alt="">
                                                    </div>
                                                    <div class="weekly3-caption">
                                                        <h4><a href="{{ route('blog',$value->slug) }}">
                                                                {{ $value->title }}
                                                            </a></h4>
                                                        <p>
                                                            {{ $value->created_at->format('d M Y') }}
                                                        </p>
                                                    </div>
                                                </div>
                                            @endforeach

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Weekly-News -->
        <!-- banner-last Start -->
        <div class="banner-area gray-bg pt-90 pb-90">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-10 col-md-10">
                        <div class="banner-one">
                            <img src="{{ asset('front-end/assets/img/gallery/body_card3.png') }}" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- banner-last End -->
    </main>
@endsection

<aside class="mh-widget-col-1 mh-sidebar" itemscope="itemscope" itemtype="https://schema.org/WPSideBar">
    <div id="block-3" class="mh-widget widget_block">
        <div class="wp-block-group">
            <div class="wp-block-group__inner-container is-layout-flow wp-block-group-is-layout-flow">
                <figure class="wp-block-image size-full"><img loading="lazy" decoding="async" width="500"
                                                              height="500"
                                                              src="https://tructiepdagathomo.top/wp-content/uploads/2023/09/8098082_a0dac-1.webp"
                                                              alt="" class="wp-image-3218"
                                                              srcset="https://tructiepdagathomo.top/wp-content/uploads/2023/09/8098082_a0dac-1.webp 500w, https://tructiepdagathomo.top/wp-content/uploads/2023/09/8098082_a0dac-1-300x300.webp 300w, https://tructiepdagathomo.top/wp-content/uploads/2023/09/8098082_a0dac-1-150x150.webp 150w"
                                                              sizes="(max-width: 500px) 100vw, 500px"/></figure>
                <h2 class="wp-block-heading">Bài viết mới </h2>
                <ul class="wp-block-latest-posts__list wp-block-latest-posts">

                    @foreach($getPosts as $value)
                        <li><a class="wp-block-latest-posts__post-title"
                               href="{{ route('blog',$value->slug) }}">
                                {{ $value->title }}
                            </a></li>
                    @endforeach
                </ul>
            </div>
        </div>
    </div>
</aside>

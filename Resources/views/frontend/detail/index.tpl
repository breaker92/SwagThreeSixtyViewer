{extends file="parent:frontend/detail/index.tpl"}

{block name='frontend_detail_image_default_image_element'}
    {if $sThreeSixtyModel}
        {block name='frontend_detail_swag_three_sixty_index_image_element'}
            {include file="frontend/detail/swag_three_sixty/model.tpl"}
        {/block}
    {else}
        {$smarty.block.parent}
    {/if}
{/block}

{block name='frontend_detail_image_thumbnail_items'}
    {if $sThreeSixtyModel}
        <a href="#"
           title="{s name="DetailThumbnailText" namespace="frontend/detail/index"}{/s}: {$alt}"
           class="thumbnail--link is--active">
            {block name='frontend_detail_image_thumbs_main_img'}
                <img srcset="http://www.freeiconspng.com/uploads/3d-icon-0.png"
                     alt="{s name="DetailThumbnailText" namespace="frontend/detail/index"}{/s}: {$alt}"
                     title="{s name="DetailThumbnailText" namespace="frontend/detail/index"}{/s}: {$alt|truncate:160}"
                     class="thumbnail--image" />
            {/block}
        </a>
    {/if}
    {$smarty.block.parent}
{/block}
<header class="c-customer-header">
    <div class="o-wrapper">
        <div class="u-d-flex u-justify-content-center u-align-items-center u-p-rel">
            {if isset($modules.rocketfunnel.cookie_redirect_checkout) && $modules.rocketfunnel.cookie_redirect_checkout}
                <a class="u-d-flex u-align-items-center u-txt-dark u-flex-1" href="{$urls.pages.cart}?action=show">
                    {include file="_partials/icon.tpl" icon="chevron-left" class="u-mr-1 c-icon--center-y"}
                    <span class="u-txt-sm u-d-desktop">
                        {l s='Retour au panier' d='Shop.Theme.Global'}
                    </span>
                </a>
            {else}
                {if $customer.is_logged && $page.page_name !== "my-account"}
                    <a class="u-d-flex u-align-items-center u-txt-black u-flex-1" href="{$urls.pages.my_account}">
                        {include file="_partials/icon.tpl" icon="chevron-left" class="u-mr-1 c-icon--center-y"}
                        <span class="u-d-desktop">
                        {l s='Retour à l\'accueil' d='Shop.Theme.Global'}
                    </span>
                    </a>
                {else}
                    <a class="u-d-flex u-align-items-center u-txt-black u-flex-1" href="{$urls.base_url}">
                        {include file="_partials/icon.tpl" icon="chevron-left" class="u-mr-1 c-icon--center-y"}
                        <span class="u-d-desktop">
                        {l s='Retour à la boutique' d='Shop.Theme.Global'}
                    </span>
                    </a>
                {/if}
            {/if}

            <a class="u-flex-1" href="{$urls.base_url}">
                <img src="{if isset($modules.prestarockettheme.logo)}{$modules.prestarockettheme.logo.url}{else}{$shop.logo}{/if}"
                     alt="{$shop.name}"{if isset($modules.prestarockettheme.logo)} width="{$modules.prestarockettheme.logo.width}" height="{$modules.prestarockettheme.logo.height}"{/if}>
            </a>

            <div class="u-d-flex u-align-items-center u-justify-content-end u-flex-1">
                {include file="_partials/icon.tpl" icon="shield-check" class="c-icon--28 c-icon--center-y u-mr-1"}
                <p class="u-mb-0 u-d-desktop">{block name='page_title_account'}{/block}</p>
            </div>
        </div>
    </div>
</header>
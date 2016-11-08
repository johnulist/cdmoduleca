{**
 * 2007-2016 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License (AFL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://opensource.org/licenses/afl-3.0.php
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to http://www.prestashop.com for more information.
 *
 * @author    Dominique <dominique@chez-dominique.fr>
 * @copyright 2007-2015 PrestaShop SA / 2011-2015 Dominique
 * @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
 * International Registred Trademark & Property of PrestaShop SA
 *}

<table>
    <tr>
        <td>
            <span style="font-size: 18pt;color: #448B01;">Coach(s)</span>
            <span style="font-size: 10pt">Du {$datepickerFrom|escape|date_format:'%A %e %B %Y'|escape:'htmlall':'UTF-8'}
                au {$datepickerTo|escape|date_format:'%A %e %B %Y'|escape:'htmlall':'UTF-8'}</span>
        </td>
    </tr>
    <tr>
        <td></td>
    </tr>
    <tr>
        <td>
            <table style="100%; font-size: 8pt;border-bottom:1px solid #448B01;">
                <thead>
                <tr style="width: 100%;background-color: #DDDDDD">
                    <th style="width: 10%">Nom</th>
                    <th style="width: 10%;text-align: center">CA TOTAL</th>
                    <th style="width: 5%;text-align: center">Nbre de ventes TOTAL</th>
                    <th style="width: 5%;text-align: center">Nbre de prospects</th>
                    <th style="width: 5%;text-align: center">Panier Moyen</th>
                    <th style="width: 5%;text-align: center">CA/Contact</th>
                    <th style="width: 5%;text-align: center">% Taux de transfo. prospect</th>
                    <th style="width: 10%;text-align: center">CA prospect</th>
                    <th style="width: 5%;text-align: center">% CA prospect</th>
                    <th style="width: 10%;text-align: center">CA FID</th>
                    <th style="width: 5%;text-align: center">% CA FID</th>
                    <th style="width: 5%">CA Retour</th>
                    <th style="width: 5%">% CA Retour</th>
                    <th style="width: 10%">CA Impayé</th>
                    <th style="width: 5%">% Impayé</th>
                </tr>
                </thead>
                <tbody>
                {foreach item=coach from=$datasEmployees}
                    <tr>
                        <td style="">{$coach['lastname']|escape:'htmlall':'UTF-8'} ({$coach['firstname']|escape:'htmlall':'UTF-8'})</td>
                        <td style="text-align: center; background-color: #DDDDDD">{displayPrice price=$coach['caTotal']}</td>
                        <td style="text-align: center">{$coach['NbreVentesTotal']|escape:'htmlall':'UTF-8'}</td>
                        <td style="text-align: center; background-color: #DDDDDD">{$coach['NbreDeProspects']|escape:'htmlall':'UTF-8'}</td>
                        <td style="text-align: center">{displayPrice price=$coach['panierMoyen']}</td>
                        <td style="text-align: center; background-color: #DDDDDD">{$coach['CaContact']|escape:'htmlall':'UTF-8'}</td>
                        <td style="text-align: center">{$coach['tauxTransfo']|escape:'htmlall':'UTF-8'}</td>
                        <td style="text-align: center; background-color: #DDDDDD">{displayPrice price=$coach['CaProsp']}</td>
                        <td style="text-align: center">{$coach['PourcCaProspect']|escape:'htmlall':'UTF-8'}</td>
                        <td style="text-align: center; background-color: #DDDDDD">{displayPrice price=$coach['caDejaInscrit']}</td>
                        <td style="text-align: center">{$coach['PourcCaFID']|escape:'htmlall':'UTF-8'}</td>
                        <td style="background-color: #DDDDDD"></td>
                        <td style=""></td>
                        <td style="background-color: #DDDDDD"></td>
                        <td style=""></td>
                        <td style="background-color: #DDDDDD"></td>
                        <td style=""></td>
                        <td style="background-color: #DDDDDD"></td>
                    </tr>
                {/foreach}
                </tbody>
            </table>
        </td>
    </tr>
</table>
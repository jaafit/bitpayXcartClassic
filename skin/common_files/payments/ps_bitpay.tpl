<h1>Bitpay</h1>

{capture name=dialog}
<form action="cc_processing.php?cc_processor={$smarty.get.cc_processor|escape:"url"}" method="post">
    
	<table cellspacing="10">

      <tr>
        <td>API Key:</td>
        <td><input type="text" name="param01" value="{$module_data.param01|escape}" /></td>
      </tr>

      <tr>
        <td>Transaction Speed:</td>
        <td>
          <select name="param02">
			<option value="high"{if $module_data.param02 eq 'high'} selected="selected"{/if}>High</option>
			<option value="medium"{if $module_data.param02 eq 'medium'} selected="selected"{/if}>Medium</option>
            <option value="low"{if $module_data.param02 eq 'low'} selected="selected"{/if}>Low</option>
          </select>
        </td>
      </tr>

    </table>

    <br />
    <br />

    <input type="submit" value="{$lng.lbl_update|strip_tags:false|escape}" />

</form>
{/capture}
{include file="dialog.tpl" title=$lng.lbl_cc_settings content=$smarty.capture.dialog extra='width="100%"'}
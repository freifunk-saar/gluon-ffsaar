return function(form, uci)
	local site = require 'gluon.site_config'

	local owner = uci:get_first("gluon-node-info", "owner")

	local text = translate(
		'Please provide your contact information here to '
		.. 'allow others to contact you. Note that '
		.. 'this information will be visible <em>publicly</em> '
		.. 'on the internet together with your node\'s coordinates.'
	) .. ' ' .. translate("gluon-config-mode:contact-help")

	local s = form:section(Section, nil, text)

	local o = s:option(Value, "contact", translate("Contact info"), translate("e.g. E-mail or phone number"))
	o.default = uci:get("gluon-node-info", owner, "contact")
	o.optional = not ((site.config_mode or {}).owner or {}).obligatory
	-- without a minimal length, an empty string will be accepted even with "optional = false"
	o.datatype = "minlength(1)"
	function o:write(data)
		if data then
			uci:set("gluon-node-info", owner, "contact", data)
		else
			uci:delete("gluon-node-info", owner, "contact")
		end
	end

	return {'gluon-node-info'}
end

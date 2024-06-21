CREATE FUNCTION plcoffee_call_handler() RETURNS language_handler
 AS 'MODULE_PATHNAME' LANGUAGE C;
CREATE FUNCTION plcoffee_inline_handler(internal) RETURNS void
 AS 'MODULE_PATHNAME' LANGUAGE C;
CREATE FUNCTION plcoffee_call_validator(oid) RETURNS void
 AS 'MODULE_PATHNAME' LANGUAGE C;
CREATE TRUSTED LANGUAGE plcoffee
 HANDLER plcoffee_call_handler
 INLINE plcoffee_inline_handler
 VALIDATOR plcoffee_call_validator;
CREATE DOMAIN plcoffee_int2array AS int2[];
CREATE DOMAIN plcoffee_int4array AS int4[];
CREATE DOMAIN plcoffee_float4array AS float4[];
CREATE DOMAIN plcoffee_float8array AS float8[];
CREATE OR REPLACE FUNCTION plcoffee_version()
RETURNS TEXT AS $$ return "2.3.15" $$ LANGUAGE plcoffee;

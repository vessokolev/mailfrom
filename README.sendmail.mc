define(`confMILTER_MACROS_ENVRCPT',`r, v, Z, b')dnl
INPUT_MAIL_FILTER(`mailfrom', `S=inet:5000@localhost')dnl
define(`confINPUT_MAIL_FILTERS', `mailfrom')dnl
define(`confMILTER_MACROS_CONNECT',`t, b, j, _, {daemon_name}, {if_name}, {if_addr}')dnl
define(`confMILTER_MACROS_HELO',`s, {tls_version}, {cipher}, {cipher_bits}, {cert_subject}, {cert_issuer}')dnl
define(`confMILTER_MACROS_ENVFROM,`i, {auth_type}, {auth_authen}, {auth_ssf}, {auth_author}, {mail_mailer}, {mail_host}, {mail_addr'}')dnl
LOCAL_CONFIG
Klog syslog
HSubject: $>+LogSubject
HX-Authost: ${mail_host}
HX-Authost: $>+LogAuthAuthor
LOCAL_RULESETS
Scheck_data
dnl
dnl NOTE: There is a tab between R$* and $:
dnl
R$*     $: $(log Authenticated-by: $&{auth_type}, $&{auth_authen}, $&{auth_ssf}, $&{auth_author}, $&{mail_mailer}, $&{mail_host}, $&{mail_addr} $) $1

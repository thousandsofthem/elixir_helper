defmodule Helper.Countries do
  alias Helper.Country, as: Country

  @countries [
    %Country{iso: "AD", name: "Andorra", prefix: "+376"},
    %Country{iso: "AE", name: "United Arab Emirates", prefix: "+971"},
    %Country{iso: "AF", name: "Afghanistan", prefix: "+93"},
    %Country{iso: "AG", name: "Antigua and Barbuda", prefix: "+1268"},
    %Country{iso: "AI", name: "Anguilla", prefix: "+1264"},
    %Country{iso: "AL", name: "Albania", prefix: "+355"},
    %Country{iso: "AM", name: "Armenia", prefix: "+374"},
    %Country{iso: "AN", name: "Netherlands Antilles"},
    %Country{iso: "AO", name: "Angola", prefix: "+244"},
    %Country{iso: "AR", name: "Argentina", prefix: "+54"},
    %Country{iso: "AS", name: "American Samoa"},
    %Country{iso: "AT", name: "Austria", prefix: "+43"},
    %Country{iso: "AU", name: "Australia", prefix: "+61"},
    %Country{iso: "AW", name: "Aruba", prefix: "+297"},
    %Country{iso: "AZ", name: "Azerbaijan", prefix: "+994"},
    %Country{iso: "BA", name: "Bosnia and Herzegovina", prefix: "+387"},
    %Country{iso: "BB", name: "Barbados", prefix: "+1246"},
    %Country{iso: "BD", name: "Bangladesh", prefix: "+880"},
    %Country{iso: "BE", name: "Belgium", prefix: "+32"},
    %Country{iso: "BF", name: "Burkina Faso", prefix: "+226"},
    %Country{iso: "BG", name: "Bulgaria", prefix: "+359"},
    %Country{iso: "BH", name: "Bahrain", prefix: "+973"},
    %Country{iso: "BI", name: "Burundi", prefix: "+257"},
    %Country{iso: "BJ", name: "Benin", prefix: "+229"},
    %Country{iso: "BL", name: "Saint Barthelemy"},
    %Country{iso: "BM", name: "Bermuda", prefix: "+1441"},
    %Country{iso: "BN", name: "Brunei", prefix: "+673"},
    %Country{iso: "BO", name: "Bolivia", prefix: "+591"},
    %Country{iso: "BQ", name: "Bonaire, Sint Eustatius and Saba"},
    %Country{iso: "BR", name: "Brazil", prefix: "+55"},
    %Country{iso: "BS", name: "Bahamas", prefix: "+1242"},
    %Country{iso: "BT", name: "Bhutan", prefix: "+975"},
    %Country{iso: "BW", name: "Botswana", prefix: "+267"},
    %Country{iso: "BY", name: "Belarus", prefix: "+375"},
    %Country{iso: "BZ", name: "Belize", prefix: "+501"},
    %Country{iso: "CA", name: "Canada", prefix: "+1"},
    %Country{iso: "CD", name: "DR Congo", prefix: "+243"},
    %Country{iso: "CF", name: "Central Africa", prefix: "+236"},
    %Country{iso: "CG", name: "Congo", prefix: "+242"},
    %Country{iso: "CH", name: "Switzerland", prefix: "+41"},
    %Country{iso: "CI", name: "Ivory Coast", prefix: "+225"},
    %Country{iso: "CK", name: "Cook Islands"},
    %Country{iso: "CL", name: "Chile", prefix: "+56"},
    %Country{iso: "CM", name: "Cameroon", prefix: "+237"},
    %Country{iso: "CN", name: "China", prefix: "+86"},
    %Country{iso: "CO", name: "Colombia", prefix: "+57"},
    %Country{iso: "CR", name: "Costa Rica", prefix: "+506"},
    %Country{iso: "CU", name: "Cuba", prefix: "+53"},
    %Country{iso: "CV", name: "Cape Verde", prefix: "+238"},
    %Country{iso: "CW", name: "Curaçao"},
    %Country{iso: "CY", name: "Cyprus", prefix: "+357"},
    %Country{iso: "CZ", name: "Czech Republic", prefix: "+420"},
    %Country{iso: "DE", name: "Germany", prefix: "+49"},
    %Country{iso: "DJ", name: "Djibouti", prefix: "+253"},
    %Country{iso: "DK", name: "Denmark", prefix: "+45"},
    %Country{iso: "DM", name: "Dominica", prefix: "+1767"},
    %Country{iso: "DO", name: "Dominican Republic", prefix: "+1809, 1829"},
    %Country{iso: "DZ", name: "Algeria", prefix: "+213"},
    %Country{iso: "EC", name: "Ecuador", prefix: "+593"},
    %Country{iso: "EE", name: "Estonia", prefix: "+372"},
    %Country{iso: "EG", name: "Egypt", prefix: "+20"},
    %Country{iso: "ER", name: "Eritrea", prefix: "+291"},
    %Country{iso: "ES", name: "Spain", prefix: "+34"},
    %Country{iso: "ET", name: "Ethiopia", prefix: "+251"},
    %Country{iso: "FI", name: "Finland", prefix: "+358"},
    %Country{iso: "FJ", name: "Fiji", prefix: "+679"},
    %Country{iso: "FK", name: "Falkland Islands", prefix: "+500"},
    %Country{iso: "FM", name: "Micronesia", prefix: "+691"},
    %Country{iso: "FO", name: "Faroe Islands"},
    %Country{iso: "FR", name: "France", prefix: "+33"},
    %Country{iso: "GA", name: "Gabon", prefix: "+241"},
    %Country{iso: "GB", name: "United Kingdom", prefix: "+44"},
    %Country{iso: "GD", name: "Grenada", prefix: "+1473"},
    %Country{iso: "GE", name: "Georgia", prefix: "+995"},
    %Country{iso: "GF", name: "French Guiana"},
    %Country{iso: "GG", name: "Guernsey", prefix: "+441481"},
    %Country{iso: "GH", name: "Ghana", prefix: "+233"},
    %Country{iso: "GI", name: "Gibraltar", prefix: "+350"},
    %Country{iso: "GL", name: "Greenland"},
    %Country{iso: "GM", name: "Gambia", prefix: "+220"},
    %Country{iso: "GN", name: "Guinea", prefix: "+224"},
    %Country{iso: "GP", name: "Guadeloupe"},
    %Country{iso: "GQ", name: "Equatorial Guinea", prefix: "+240"},
    %Country{iso: "GR", name: "Greece", prefix: "+30"},
    %Country{iso: "GT", name: "Guatemala", prefix: "+502"},
    %Country{iso: "GU", name: "Guam"},
    %Country{iso: "GW", name: "Guinea-Bissau", prefix: "+245"},
    %Country{iso: "GY", name: "Guyana", prefix: "+592"},
    %Country{iso: "HK", name: "Hong Kong", prefix: "+852"},
    %Country{iso: "HN", name: "Honduras", prefix: "+504"},
    %Country{iso: "HR", name: "Croatia", prefix: "+385"},
    %Country{iso: "HT", name: "Haiti", prefix: "+509"},
    %Country{iso: "HU", name: "Hungary", prefix: "+36"},
    %Country{iso: "ID", name: "Indonesia", prefix: "+62"},
    %Country{iso: "IE", name: "Ireland", prefix: "+353"},
    %Country{iso: "IL", name: "Israel", prefix: "+972"},
    %Country{iso: "IM", name: "Isle of Man"},
    %Country{iso: "IN", name: "India", prefix: "+91"},
    %Country{iso: "IO", name: "British Indian Ocean Territory"},
    %Country{iso: "IQ", name: "Iraq", prefix: "+964"},
    %Country{iso: "IR", name: "Iran", prefix: "+98"},
    %Country{iso: "IS", name: "Iceland", prefix: "+354"},
    %Country{iso: "IT", name: "Italy", prefix: "+39"},
    %Country{iso: "JE", name: "Jersey", prefix: "+441534"},
    %Country{iso: "JM", name: "Jamaica", prefix: "+1876"},
    %Country{iso: "JO", name: "Jordan", prefix: "+962"},
    %Country{iso: "JP", name: "Japan", prefix: "+81"},
    %Country{iso: "KE", name: "Kenya", prefix: "+254"},
    %Country{iso: "KG", name: "Kyrgyzstan", prefix: "+996"},
    %Country{iso: "KH", name: "Cambodia", prefix: "+855"},
    %Country{iso: "KI", name: "Kiribati"},
    %Country{iso: "KM", name: "Comoros", prefix: "+269"},
    %Country{iso: "KN", name: "St Kitts and Nevis", prefix: "+1869"},
    %Country{iso: "KP", name: "North Korea", prefix: "+850"},
    %Country{iso: "KR", name: "Korea Republic of", prefix: "+82"},
    %Country{iso: "KW", name: "Kuwait", prefix: "+965"},
    %Country{iso: "KY", name: "Cayman Islands", prefix: "+1345"},
    %Country{iso: "KZ", name: "Kazakhstan", prefix: "+7"},
    %Country{iso: "LA", name: "Laos PDR", prefix: "+856"},
    %Country{iso: "LB", name: "Lebanon", prefix: "+961"},
    %Country{iso: "LC", name: "St Lucia", prefix: "+1758"},
    %Country{iso: "LI", name: "Liechtenstein", prefix: "+423"},
    %Country{iso: "LK", name: "Sri Lanka", prefix: "+94"},
    %Country{iso: "LR", name: "Liberia", prefix: "+231"},
    %Country{iso: "LS", name: "Lesotho", prefix: "+266"},
    %Country{iso: "LT", name: "Lithuania", prefix: "+370"},
    %Country{iso: "LU", name: "Luxembourg", prefix: "+352"},
    %Country{iso: "LV", name: "Latvia", prefix: "+371"},
    %Country{iso: "LY", name: "Libya", prefix: "+218"},
    %Country{iso: "MA", name: "Morocco", prefix: "+212"},
    %Country{iso: "MC", name: "Monaco", prefix: "+377"},
    %Country{iso: "MD", name: "Moldova", prefix: "+373"},
    %Country{iso: "ME", name: "Montenegro", prefix: "+382"},
    %Country{iso: "MF", name: "Saint Martin"},
    %Country{iso: "MG", name: "Madagascar", prefix: "+261"},
    %Country{iso: "MH", name: "Marshall Islands"},
    %Country{iso: "MK", name: "Macedonia", prefix: "+389"},
    %Country{iso: "ML", name: "Mali", prefix: "+223"},
    %Country{iso: "MM", name: "Myanmar", prefix: "+95"},
    %Country{iso: "MN", name: "Mongolia", prefix: "+976"},
    %Country{iso: "MO", name: "Macau", prefix: "+853"},
    %Country{iso: "MQ", name: "Martinique"},
    %Country{iso: "MR", name: "Mauritania", prefix: "+222"},
    %Country{iso: "MS", name: "Montserrat", prefix: "+1664"},
    %Country{iso: "MT", name: "Malta", prefix: "+356"},
    %Country{iso: "MU", name: "Mauritius", prefix: "+230"},
    %Country{iso: "MV", name: "Maldives", prefix: "+960"},
    %Country{iso: "MW", name: "Malawi", prefix: "+265"},
    %Country{iso: "MX", name: "Mexico", prefix: "+52"},
    %Country{iso: "MY", name: "Malaysia", prefix: "+60"},
    %Country{iso: "MZ", name: "Mozambique", prefix: "+258"},
    %Country{iso: "NA", name: "Namibia", prefix: "+264"},
    %Country{iso: "NC", name: "New Caledonia"},
    %Country{iso: "NE", name: "Niger", prefix: "+227"},
    %Country{iso: "NF", name: "Norfolk Island"},
    %Country{iso: "NG", name: "Nigeria", prefix: "+234"},
    %Country{iso: "NI", name: "Nicaragua", prefix: "+505"},
    %Country{iso: "NL", name: "Netherlands", prefix: "+31"},
    %Country{iso: "NO", name: "Norway", prefix: "+47"},
    %Country{iso: "NP", name: "Nepal", prefix: "+977"},
    %Country{iso: "NR", name: "Nauru"},
    %Country{iso: "NU", name: "Niue"},
    %Country{iso: "NZ", name: "New Zealand", prefix: "+64"},
    %Country{iso: "OM", name: "Oman", prefix: "+968"},
    %Country{iso: "PA", name: "Panama", prefix: "+507"},
    %Country{iso: "PE", name: "Peru", prefix: "+51"},
    %Country{iso: "PF", name: "French Polynesia", prefix: "+689"},
    %Country{iso: "PG", name: "Papua New Guinea", prefix: "+675"},
    %Country{iso: "PH", name: "Philippines", prefix: "+63"},
    %Country{iso: "PK", name: "Pakistan", prefix: "+92"},
    %Country{iso: "PL", name: "Poland", prefix: "+48"},
    %Country{iso: "PM", name: "St Pierre and Miquelon"},
    %Country{iso: "PR", name: "Puerto Rico", prefix: "+1787, 1939"},
    %Country{iso: "PS", name: "Palestinian Territory"},
    %Country{iso: "PT", name: "Portugal", prefix: "+351"},
    %Country{iso: "PW", name: "Palau", prefix: "+680"},
    %Country{iso: "PY", name: "Paraguay", prefix: "+595"},
    %Country{iso: "QA", name: "Qatar", prefix: "+974"},
    %Country{iso: "RE", name: "Reunion/Mayotte"},
    %Country{iso: "RO", name: "Romania", prefix: "+40"},
    %Country{iso: "RS", name: "Serbia", prefix: "+381"},
    %Country{iso: "RU", name: "Russia", prefix: "+7"},
    %Country{iso: "RW", name: "Rwanda", prefix: "+250"},
    %Country{iso: "SA", name: "Saudi Arabia", prefix: "+966"},
    %Country{iso: "SB", name: "Solomon Islands", prefix: "+677"},
    %Country{iso: "SC", name: "Seychelles", prefix: "+248"},
    %Country{iso: "SD", name: "Sudan", prefix: "+249"},
    %Country{iso: "SE", name: "Sweden", prefix: "+46"},
    %Country{iso: "SG", name: "Singapore", prefix: "+65"},
    %Country{iso: "SH", name: "Saint Helena and Tristan da Cunha", prefix: "+290"},
    %Country{iso: "SI", name: "Slovenia", prefix: "+386"},
    %Country{iso: "SK", name: "Slovakia", prefix: "+421"},
    %Country{iso: "SL", name: "Sierra Leone", prefix: "+232"},
    %Country{iso: "SM", name: "San Marino", prefix: "+378"},
    %Country{iso: "SN", name: "Senegal", prefix: "+221"},
    %Country{iso: "SO", name: "Somalia", prefix: "+252"},
    %Country{iso: "SR", name: "Suriname", prefix: "+597"},
    %Country{iso: "SS", name: "South Sudan"},
    %Country{iso: "ST", name: "Sao Tome and Principe", prefix: "+239"},
    %Country{iso: "SV", name: "El Salvador", prefix: "+503"},
    %Country{iso: "SY", name: "Syria", prefix: "+963"},
    %Country{iso: "SZ", name: "Swaziland", prefix: "+268"},
    %Country{iso: "TC", name: "Turks and Caicos Islands", prefix: "+1649"},
    %Country{iso: "TD", name: "Chad", prefix: "+235"},
    %Country{iso: "TG", name: "Togo", prefix: "+228"},
    %Country{iso: "TH", name: "Thailand", prefix: "+66"},
    %Country{iso: "TJ", name: "Tajikistan", prefix: "+992"},
    %Country{iso: "TK", name: "Tokelau"},
    %Country{iso: "TL", name: "East Timor", prefix: "+670"},
    %Country{iso: "TM", name: "Turkmenistan", prefix: "+993"},
    %Country{iso: "TN", name: "Tunisia", prefix: "+216"},
    %Country{iso: "TO", name: "Tonga", prefix: "+676"},
    %Country{iso: "TR", name: "Turkey", prefix: "+90"},
    %Country{iso: "TT", name: "Trinidad and Tobago", prefix: "+1868"},
    %Country{iso: "TV", name: "Tuvalu"},
    %Country{iso: "TW", name: "Taiwan", prefix: "+886"},
    %Country{iso: "TZ", name: "Tanzania", prefix: "+255"},
    %Country{iso: "UA", name: "Ukraine", prefix: "+380"},
    %Country{iso: "UG", name: "Uganda", prefix: "+256"},
    %Country{iso: "US", name: "United States", prefix: "+1"},
    %Country{iso: "UY", name: "Uruguay", prefix: "+598"},
    %Country{iso: "UZ", name: "Uzbekistan", prefix: "+998"},
    %Country{iso: "VC", name: "St Vincent Grenadines", prefix: "+1784"},
    %Country{iso: "VE", name: "Venezuela", prefix: "+58"},
    %Country{iso: "VG", name: "Virgin Islands", prefix: "+1284"},
    %Country{iso: "VI", name: "Virgin Islands", prefix: "+1340"},
    %Country{iso: "VN", name: "Vietnam", prefix: "+84"},
    %Country{iso: "VU", name: "Vanuatu", prefix: "+678"},
    %Country{iso: "WF", name: "Wallis and Futuna"},
    %Country{iso: "WS", name: "Samoa", prefix: "+685"},
    %Country{iso: "XK", name: "Kosovo"},
    %Country{iso: "YE", name: "Yemen", prefix: "+967"},
    %Country{iso: "ZA", name: "South Africa", prefix: "+27"},
    %Country{iso: "ZM", name: "Zambia", prefix: "+260"},
    %Country{iso: "ZW", name: "Zimbabwe", prefix: "+263"}
  ]

  def all, do: @countries

  def by_iso(iso) do
    @countries
    |> Enum.find(fn co -> co.iso == iso end)
  end
end

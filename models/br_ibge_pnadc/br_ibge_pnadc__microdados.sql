{{ config(
    alias='microdados',
    schema='br_ibge_pnadc',
    materialized='table',
    partition_by={
    "field": "ano",
    "data_type": "int64",
    "range": {
        "start": 2012,
        "end": 2025,
        "interval": 1}
    },
    cluster_by = "sigla_uf",
    labels = {'project_id': 'basedosdados-dev', 'tema': 'economia'})
}}

SELECT
SAFE_CAST(ano AS INT64) ano,
SAFE_CAST(trimestre AS INT64) trimestre,
SAFE_CAST(id_uf AS STRING) id_uf,
SAFE_CAST(sigla_uf AS STRING) sigla_uf,
SAFE_CAST(capital AS STRING) capital,
SAFE_CAST(rm_ride AS STRING) rm_ride,
SAFE_CAST(id_upa AS STRING) id_upa,
SAFE_CAST(id_estrato AS STRING) id_estrato,
SAFE_CAST(CONCAT(id_upa,lpad(V1008,2,'0'),lpad(V1014,2,'0')) AS STRING) id_domicilio,
SAFE_CAST(CONCAT(id_upa,lpad(V1008,2,'0'),lpad(V1014,2,'0'), lpad(V2003,2,'0')) AS STRING) id_pessoa,
SAFE_CAST(lpad(V1008,2,'0') AS STRING) V1008,
SAFE_CAST(lpad(V1014,2,'0') AS STRING) V1014,
SAFE_CAST(V1016 AS INT64) V1016,
SAFE_CAST(V1022 AS STRING) V1022,
SAFE_CAST(V1023 AS STRING) V1023,
SAFE_CAST(V1027 AS FLOAT64) V1027,
SAFE_CAST(V1028 AS FLOAT64) V1028,
SAFE_CAST(V1029 AS INT64) V1029,
SAFE_CAST(V1033 AS INT64) V1033,
SAFE_CAST(posest AS STRING) posest,
SAFE_CAST(posest_sxi AS STRING) posest_sxi,
SAFE_CAST(V2001 AS INT64) V2001,
SAFE_CAST(V2003 AS INT64) V2003,
SAFE_CAST(V2005 AS STRING) V2005,
SAFE_CAST(V2007 AS STRING) V2007,
SAFE_CAST(V2008 AS INT64) V2008,
SAFE_CAST(V20081 AS INT64) V20081,
SAFE_CAST(V20082 AS INT64) V20082,
SAFE_CAST(V2009 AS INT64) V2009,
SAFE_CAST(V2010 AS STRING) V2010,
SAFE_CAST(V3001 AS STRING) V3001,
SAFE_CAST(V3002 AS STRING) V3002,
SAFE_CAST(V3002A AS STRING) V3002A,
SAFE_CAST(V3003 AS STRING) V3003,
SAFE_CAST(V3003A AS STRING) V3003A,
SAFE_CAST(V3004 AS STRING) V3004,
SAFE_CAST(V3005 AS STRING) V3005,
SAFE_CAST(V3005A AS STRING) V3005A,
SAFE_CAST(V3006 AS STRING) V3006,
SAFE_CAST(V3006A AS STRING) V3006A,
SAFE_CAST(V3007 AS STRING) V3007,
SAFE_CAST(V3008 AS STRING) V3008,
SAFE_CAST(V3009 AS STRING) V3009,
SAFE_CAST(V3009A AS STRING) V3009A,
SAFE_CAST(V3010 AS STRING) V3010,
SAFE_CAST(V3011 AS STRING) V3011,
SAFE_CAST(V3011A AS STRING) V3011A,
SAFE_CAST(V3012 AS STRING) V3012,
SAFE_CAST(V3013 AS STRING) V3013,
SAFE_CAST(V3013A AS STRING) V3013A,
SAFE_CAST(V3013B AS STRING) V3013B,
SAFE_CAST(V3014 AS STRING) V3014,
SAFE_CAST(V4001 AS STRING) V4001,
SAFE_CAST(V4002 AS STRING) V4002,
SAFE_CAST(V4003 AS STRING) V4003,
SAFE_CAST(V4004 AS STRING) V4004,
SAFE_CAST(V4005 AS STRING) V4005,
SAFE_CAST(V4006 AS STRING) V4006,
SAFE_CAST(V4006A AS STRING) V4006A,
SAFE_CAST(V4007 AS STRING) V4007,
SAFE_CAST(V4008 AS STRING) V4008,
SAFE_CAST(V40081 AS INT64) V40081,
SAFE_CAST(V40082 AS INT64) V40082,
SAFE_CAST(V40083 AS INT64) V40083,
SAFE_CAST(V4009 AS STRING) V4009,
SAFE_CAST(V4010 AS STRING) V4010,
SAFE_CAST(V4012 AS STRING) V4012,
SAFE_CAST(V40121 AS STRING) V40121,
SAFE_CAST(V4013 AS STRING) V4013,
SAFE_CAST(V40132 AS STRING) V40132,
SAFE_CAST(V40132A AS STRING) V40132A,
SAFE_CAST(V4014 AS STRING) V4014,
SAFE_CAST(V4015 AS STRING) V4015,
SAFE_CAST(V40151 AS STRING) V40151,
SAFE_CAST(V401511 AS INT64) V401511,
SAFE_CAST(V401512 AS INT64) V401512,
SAFE_CAST(V4016 AS STRING) V4016,
SAFE_CAST(V40161 AS INT64) V40161,
SAFE_CAST(V40162 AS INT64) V40162,
SAFE_CAST(V40163 AS INT64) V40163,
SAFE_CAST(V4017 AS STRING) V4017,
SAFE_CAST(V40171 AS STRING) V40171,
SAFE_CAST(V401711 AS INT64) V401711,
SAFE_CAST(V4018 AS STRING) V4018,
SAFE_CAST(V40181 AS INT64) V40181,
SAFE_CAST(V40182 AS INT64) V40182,
SAFE_CAST(V40183 AS INT64) V40183,
SAFE_CAST(V4019 AS STRING) V4019,
SAFE_CAST(V4020 AS STRING) V4020,
SAFE_CAST(V4021 AS STRING) V4021,
SAFE_CAST(V4022 AS STRING) V4022,
SAFE_CAST(V4024 AS STRING) V4024,
SAFE_CAST(V4025 AS STRING) V4025,
SAFE_CAST(V4026 AS STRING) V4026,
SAFE_CAST(V4027 AS STRING) V4027,
SAFE_CAST(V4028 AS STRING) V4028,
SAFE_CAST(V4029 AS STRING) V4029,
SAFE_CAST(V4032 AS STRING) V4032,
SAFE_CAST(V4033 AS STRING) V4033,
SAFE_CAST(V40331 AS STRING) V40331,
SAFE_CAST(V403311 AS STRING) V403311,
SAFE_CAST(V403312 AS FLOAT64) V403312,
SAFE_CAST(V40332 AS STRING) V40332,
SAFE_CAST(V403321 AS STRING) V403321,
SAFE_CAST(V403322 AS FLOAT64) V403322,
SAFE_CAST(V40333 AS STRING) V40333,
SAFE_CAST(V403331 AS STRING) V403331,
SAFE_CAST(V4034 AS STRING) V4034,
SAFE_CAST(V40341 AS STRING) V40341,
SAFE_CAST(V403411 AS STRING) V403411,
SAFE_CAST(V403412 AS FLOAT64) V403412,
SAFE_CAST(V40342 AS STRING) V40342,
SAFE_CAST(V403421 AS STRING) V403421,
SAFE_CAST(V403422 AS FLOAT64) V403422,
SAFE_CAST(V4039 AS INT64) V4039,
SAFE_CAST(V4039C AS INT64) V4039C,
SAFE_CAST(V4040 AS STRING) V4040,
SAFE_CAST(V40401 AS STRING) V40401,
SAFE_CAST(V40402 AS STRING) V40402,
SAFE_CAST(V40403 AS STRING) V40403,
SAFE_CAST(V4041 AS STRING) V4041,
SAFE_CAST(V4043 AS STRING) V4043,
SAFE_CAST(V40431 AS STRING) V40431,
SAFE_CAST(V4044 AS STRING) V4044,
SAFE_CAST(V4045 AS STRING) V4045,
SAFE_CAST(V4046 AS STRING) V4046,
SAFE_CAST(V4047 AS STRING) V4047,
SAFE_CAST(V4048 AS STRING) V4048,
SAFE_CAST(V4049 AS STRING) V4049,
SAFE_CAST(V4050 AS STRING) V4050,
SAFE_CAST(V40501 AS STRING) V40501,
SAFE_CAST(V405011 AS STRING) V405011,
SAFE_CAST(V405012 AS FLOAT64) V405012,
SAFE_CAST(V40502 AS STRING) V40502,
SAFE_CAST(V405021 AS STRING) V405021,
SAFE_CAST(V405022 AS FLOAT64) V405022,
SAFE_CAST(V40503 AS STRING) V40503,
SAFE_CAST(V405031 AS STRING) V405031,
SAFE_CAST(V4051 AS STRING) V4051,
SAFE_CAST(V40511 AS STRING) V40511,
SAFE_CAST(V405111 AS STRING) V405111,
SAFE_CAST(V405112 AS FLOAT64) V405112,
SAFE_CAST(V40512 AS STRING) V40512,
SAFE_CAST(V405121 AS STRING) V405121,
SAFE_CAST(V405122 AS FLOAT64) V405122,
SAFE_CAST(V4056 AS INT64) V4056,
SAFE_CAST(V4056C AS INT64) V4056C,
SAFE_CAST(V4057 AS STRING) V4057,
SAFE_CAST(V4058 AS STRING) V4058,
SAFE_CAST(V40581 AS STRING) V40581,
SAFE_CAST(V405811 AS STRING) V405811,
SAFE_CAST(V405812 AS FLOAT64) V405812,
SAFE_CAST(V40582 AS STRING) V40582,
SAFE_CAST(V405821 AS STRING) V405821,
SAFE_CAST(V405822 AS FLOAT64) V405822,
SAFE_CAST(V40583 AS STRING) V40583,
SAFE_CAST(V405831 AS STRING) V405831,
SAFE_CAST(V40584 AS STRING) V40584,
SAFE_CAST(V4059 AS STRING) V4059,
SAFE_CAST(V40591 AS STRING) V40591,
SAFE_CAST(V405911 AS STRING) V405911,
SAFE_CAST(V405912 AS FLOAT64) V405912,
SAFE_CAST(V40592 AS STRING) V40592,
SAFE_CAST(V405921 AS STRING) V405921,
SAFE_CAST(V405922 AS FLOAT64) V405922,
SAFE_CAST(V4062 AS INT64) V4062,
SAFE_CAST(V4062C AS INT64) V4062C,
SAFE_CAST(V4063 AS STRING) V4063,
SAFE_CAST(V4063A AS STRING) V4063A,
SAFE_CAST(V4064 AS STRING) V4064,
SAFE_CAST(V4064A AS STRING) V4064A,
SAFE_CAST(V4071 AS STRING) V4071,
SAFE_CAST(V4072 AS STRING) V4072,
SAFE_CAST(V4072A AS STRING) V4072A,
SAFE_CAST(V4073 AS STRING) V4073,
SAFE_CAST(V4074 AS STRING) V4074,
SAFE_CAST(V4074A AS STRING) V4074A,
SAFE_CAST(V4075A AS STRING) V4075A,
SAFE_CAST(V4075A1 AS INT64) V4075A1,
SAFE_CAST(V4076 AS STRING) V4076,
SAFE_CAST(V40761 AS INT64) V40761,
SAFE_CAST(V40762 AS INT64) V40762,
SAFE_CAST(V40763 AS INT64) V40763,
SAFE_CAST(V4077 AS STRING) V4077,
SAFE_CAST(V4078 AS STRING) V4078,
SAFE_CAST(V4078A AS STRING) V4078A,
SAFE_CAST(V4082 AS STRING) V4082,
SAFE_CAST(VD2002 AS STRING) VD2002,
SAFE_CAST(VD2003 AS INT64) VD2003,
SAFE_CAST(VD2004 AS STRING) VD2004,
SAFE_CAST(VD3004 AS STRING) VD3004,
SAFE_CAST(VD3005 AS INT64) VD3005,
SAFE_CAST(VD3006 AS STRING) VD3006,
SAFE_CAST(VD4001 AS STRING) VD4001,
SAFE_CAST(VD4002 AS STRING) VD4002,
SAFE_CAST(VD4003 AS STRING) VD4003,
SAFE_CAST(VD4004 AS STRING) VD4004,
SAFE_CAST(VD4004A AS STRING) VD4004A,
SAFE_CAST(VD4005 AS STRING) VD4005,
SAFE_CAST(VD4007 AS STRING) VD4007,
SAFE_CAST(VD4008 AS STRING) VD4008,
SAFE_CAST(VD4009 AS STRING) VD4009,
SAFE_CAST(VD4010 AS STRING) VD4010,
SAFE_CAST(VD4011 AS STRING) VD4011,
SAFE_CAST(VD4012 AS STRING) VD4012,
SAFE_CAST(VD4013 AS STRING) VD4013,
SAFE_CAST(VD4014 AS STRING) VD4014,
SAFE_CAST(VD4015 AS STRING) VD4015,
SAFE_CAST(VD4016 AS FLOAT64) VD4016,
SAFE_CAST(VD4017 AS FLOAT64) VD4017,
SAFE_CAST(VD4018 AS STRING) VD4018,
SAFE_CAST(VD4019 AS FLOAT64) VD4019,
SAFE_CAST(VD4020 AS FLOAT64) VD4020,
SAFE_CAST(VD4023 AS STRING) VD4023,
SAFE_CAST(VD4030 AS STRING) VD4030,
SAFE_CAST(VD4031 AS INT64) VD4031,
SAFE_CAST(VD4032 AS INT64) VD4032,
SAFE_CAST(VD4033 AS INT64) VD4033,
SAFE_CAST(VD4034 AS INT64) VD4034,
SAFE_CAST(VD4035 AS INT64) VD4035,
SAFE_CAST(VD4036 AS STRING) VD4036,
SAFE_CAST(VD4037 AS STRING) VD4037,
SAFE_CAST(V1028001 AS FLOAT64) V1028001,
SAFE_CAST(V1028002 AS FLOAT64) V1028002,
SAFE_CAST(V1028003 AS FLOAT64) V1028003,
SAFE_CAST(V1028004 AS FLOAT64) V1028004,
SAFE_CAST(V1028005 AS FLOAT64) V1028005,
SAFE_CAST(V1028006 AS FLOAT64) V1028006,
SAFE_CAST(V1028007 AS FLOAT64) V1028007,
SAFE_CAST(V1028008 AS FLOAT64) V1028008,
SAFE_CAST(V1028009 AS FLOAT64) V1028009,
SAFE_CAST(V1028010 AS FLOAT64) V1028010,
SAFE_CAST(V1028011 AS FLOAT64) V1028011,
SAFE_CAST(V1028012 AS FLOAT64) V1028012,
SAFE_CAST(V1028013 AS FLOAT64) V1028013,
SAFE_CAST(V1028014 AS FLOAT64) V1028014,
SAFE_CAST(V1028015 AS FLOAT64) V1028015,
SAFE_CAST(V1028016 AS FLOAT64) V1028016,
SAFE_CAST(V1028017 AS FLOAT64) V1028017,
SAFE_CAST(V1028018 AS FLOAT64) V1028018,
SAFE_CAST(V1028019 AS FLOAT64) V1028019,
SAFE_CAST(V1028020 AS FLOAT64) V1028020,
SAFE_CAST(V1028021 AS FLOAT64) V1028021,
SAFE_CAST(V1028022 AS FLOAT64) V1028022,
SAFE_CAST(V1028023 AS FLOAT64) V1028023,
SAFE_CAST(V1028024 AS FLOAT64) V1028024,
SAFE_CAST(V1028025 AS FLOAT64) V1028025,
SAFE_CAST(V1028026 AS FLOAT64) V1028026,
SAFE_CAST(V1028027 AS FLOAT64) V1028027,
SAFE_CAST(V1028028 AS FLOAT64) V1028028,
SAFE_CAST(V1028029 AS FLOAT64) V1028029,
SAFE_CAST(V1028030 AS FLOAT64) V1028030,
SAFE_CAST(V1028031 AS FLOAT64) V1028031,
SAFE_CAST(V1028032 AS FLOAT64) V1028032,
SAFE_CAST(V1028033 AS FLOAT64) V1028033,
SAFE_CAST(V1028034 AS FLOAT64) V1028034,
SAFE_CAST(V1028035 AS FLOAT64) V1028035,
SAFE_CAST(V1028036 AS FLOAT64) V1028036,
SAFE_CAST(V1028037 AS FLOAT64) V1028037,
SAFE_CAST(V1028038 AS FLOAT64) V1028038,
SAFE_CAST(V1028039 AS FLOAT64) V1028039,
SAFE_CAST(V1028040 AS FLOAT64) V1028040,
SAFE_CAST(V1028041 AS FLOAT64) V1028041,
SAFE_CAST(V1028042 AS FLOAT64) V1028042,
SAFE_CAST(V1028043 AS FLOAT64) V1028043,
SAFE_CAST(V1028044 AS FLOAT64) V1028044,
SAFE_CAST(V1028045 AS FLOAT64) V1028045,
SAFE_CAST(V1028046 AS FLOAT64) V1028046,
SAFE_CAST(V1028047 AS FLOAT64) V1028047,
SAFE_CAST(V1028048 AS FLOAT64) V1028048,
SAFE_CAST(V1028049 AS FLOAT64) V1028049,
SAFE_CAST(V1028050 AS FLOAT64) V1028050,
SAFE_CAST(V1028051 AS FLOAT64) V1028051,
SAFE_CAST(V1028052 AS FLOAT64) V1028052,
SAFE_CAST(V1028053 AS FLOAT64) V1028053,
SAFE_CAST(V1028054 AS FLOAT64) V1028054,
SAFE_CAST(V1028055 AS FLOAT64) V1028055,
SAFE_CAST(V1028056 AS FLOAT64) V1028056,
SAFE_CAST(V1028057 AS FLOAT64) V1028057,
SAFE_CAST(V1028058 AS FLOAT64) V1028058,
SAFE_CAST(V1028059 AS FLOAT64) V1028059,
SAFE_CAST(V1028060 AS FLOAT64) V1028060,
SAFE_CAST(V1028061 AS FLOAT64) V1028061,
SAFE_CAST(V1028062 AS FLOAT64) V1028062,
SAFE_CAST(V1028063 AS FLOAT64) V1028063,
SAFE_CAST(V1028064 AS FLOAT64) V1028064,
SAFE_CAST(V1028065 AS FLOAT64) V1028065,
SAFE_CAST(V1028066 AS FLOAT64) V1028066,
SAFE_CAST(V1028067 AS FLOAT64) V1028067,
SAFE_CAST(V1028068 AS FLOAT64) V1028068,
SAFE_CAST(V1028069 AS FLOAT64) V1028069,
SAFE_CAST(V1028070 AS FLOAT64) V1028070,
SAFE_CAST(V1028071 AS FLOAT64) V1028071,
SAFE_CAST(V1028072 AS FLOAT64) V1028072,
SAFE_CAST(V1028073 AS FLOAT64) V1028073,
SAFE_CAST(V1028074 AS FLOAT64) V1028074,
SAFE_CAST(V1028075 AS FLOAT64) V1028075,
SAFE_CAST(V1028076 AS FLOAT64) V1028076,
SAFE_CAST(V1028077 AS FLOAT64) V1028077,
SAFE_CAST(V1028078 AS FLOAT64) V1028078,
SAFE_CAST(V1028079 AS FLOAT64) V1028079,
SAFE_CAST(V1028080 AS FLOAT64) V1028080,
SAFE_CAST(V1028081 AS FLOAT64) V1028081,
SAFE_CAST(V1028082 AS FLOAT64) V1028082,
SAFE_CAST(V1028083 AS FLOAT64) V1028083,
SAFE_CAST(V1028084 AS FLOAT64) V1028084,
SAFE_CAST(V1028085 AS FLOAT64) V1028085,
SAFE_CAST(V1028086 AS FLOAT64) V1028086,
SAFE_CAST(V1028087 AS FLOAT64) V1028087,
SAFE_CAST(V1028088 AS FLOAT64) V1028088,
SAFE_CAST(V1028089 AS FLOAT64) V1028089,
SAFE_CAST(V1028090 AS FLOAT64) V1028090,
SAFE_CAST(V1028091 AS FLOAT64) V1028091,
SAFE_CAST(V1028092 AS FLOAT64) V1028092,
SAFE_CAST(V1028093 AS FLOAT64) V1028093,
SAFE_CAST(V1028094 AS FLOAT64) V1028094,
SAFE_CAST(V1028095 AS FLOAT64) V1028095,
SAFE_CAST(V1028096 AS FLOAT64) V1028096,
SAFE_CAST(V1028097 AS FLOAT64) V1028097,
SAFE_CAST(V1028098 AS FLOAT64) V1028098,
SAFE_CAST(V1028099 AS FLOAT64) V1028099,
SAFE_CAST(V1028100 AS FLOAT64) V1028100,
SAFE_CAST(V1028101 AS FLOAT64) V1028101,
SAFE_CAST(V1028102 AS FLOAT64) V1028102,
SAFE_CAST(V1028103 AS FLOAT64) V1028103,
SAFE_CAST(V1028104 AS FLOAT64) V1028104,
SAFE_CAST(V1028105 AS FLOAT64) V1028105,
SAFE_CAST(V1028106 AS FLOAT64) V1028106,
SAFE_CAST(V1028107 AS FLOAT64) V1028107,
SAFE_CAST(V1028108 AS FLOAT64) V1028108,
SAFE_CAST(V1028109 AS FLOAT64) V1028109,
SAFE_CAST(V1028110 AS FLOAT64) V1028110,
SAFE_CAST(V1028111 AS FLOAT64) V1028111,
SAFE_CAST(V1028112 AS FLOAT64) V1028112,
SAFE_CAST(V1028113 AS FLOAT64) V1028113,
SAFE_CAST(V1028114 AS FLOAT64) V1028114,
SAFE_CAST(V1028115 AS FLOAT64) V1028115,
SAFE_CAST(V1028116 AS FLOAT64) V1028116,
SAFE_CAST(V1028117 AS FLOAT64) V1028117,
SAFE_CAST(V1028118 AS FLOAT64) V1028118,
SAFE_CAST(V1028119 AS FLOAT64) V1028119,
SAFE_CAST(V1028120 AS FLOAT64) V1028120,
SAFE_CAST(V1028121 AS FLOAT64) V1028121,
SAFE_CAST(V1028122 AS FLOAT64) V1028122,
SAFE_CAST(V1028123 AS FLOAT64) V1028123,
SAFE_CAST(V1028124 AS FLOAT64) V1028124,
SAFE_CAST(V1028125 AS FLOAT64) V1028125,
SAFE_CAST(V1028126 AS FLOAT64) V1028126,
SAFE_CAST(V1028127 AS FLOAT64) V1028127,
SAFE_CAST(V1028128 AS FLOAT64) V1028128,
SAFE_CAST(V1028129 AS FLOAT64) V1028129,
SAFE_CAST(V1028130 AS FLOAT64) V1028130,
SAFE_CAST(V1028131 AS FLOAT64) V1028131,
SAFE_CAST(V1028132 AS FLOAT64) V1028132,
SAFE_CAST(V1028133 AS FLOAT64) V1028133,
SAFE_CAST(V1028134 AS FLOAT64) V1028134,
SAFE_CAST(V1028135 AS FLOAT64) V1028135,
SAFE_CAST(V1028136 AS FLOAT64) V1028136,
SAFE_CAST(V1028137 AS FLOAT64) V1028137,
SAFE_CAST(V1028138 AS FLOAT64) V1028138,
SAFE_CAST(V1028139 AS FLOAT64) V1028139,
SAFE_CAST(V1028140 AS FLOAT64) V1028140,
SAFE_CAST(V1028141 AS FLOAT64) V1028141,
SAFE_CAST(V1028142 AS FLOAT64) V1028142,
SAFE_CAST(V1028143 AS FLOAT64) V1028143,
SAFE_CAST(V1028144 AS FLOAT64) V1028144,
SAFE_CAST(V1028145 AS FLOAT64) V1028145,
SAFE_CAST(V1028146 AS FLOAT64) V1028146,
SAFE_CAST(V1028147 AS FLOAT64) V1028147,
SAFE_CAST(V1028148 AS FLOAT64) V1028148,
SAFE_CAST(V1028149 AS FLOAT64) V1028149,
SAFE_CAST(V1028150 AS FLOAT64) V1028150,
SAFE_CAST(V1028151 AS FLOAT64) V1028151,
SAFE_CAST(V1028152 AS FLOAT64) V1028152,
SAFE_CAST(V1028153 AS FLOAT64) V1028153,
SAFE_CAST(V1028154 AS FLOAT64) V1028154,
SAFE_CAST(V1028155 AS FLOAT64) V1028155,
SAFE_CAST(V1028156 AS FLOAT64) V1028156,
SAFE_CAST(V1028157 AS FLOAT64) V1028157,
SAFE_CAST(V1028158 AS FLOAT64) V1028158,
SAFE_CAST(V1028159 AS FLOAT64) V1028159,
SAFE_CAST(V1028160 AS FLOAT64) V1028160,
SAFE_CAST(V1028161 AS FLOAT64) V1028161,
SAFE_CAST(V1028162 AS FLOAT64) V1028162,
SAFE_CAST(V1028163 AS FLOAT64) V1028163,
SAFE_CAST(V1028164 AS FLOAT64) V1028164,
SAFE_CAST(V1028165 AS FLOAT64) V1028165,
SAFE_CAST(V1028166 AS FLOAT64) V1028166,
SAFE_CAST(V1028167 AS FLOAT64) V1028167,
SAFE_CAST(V1028168 AS FLOAT64) V1028168,
SAFE_CAST(V1028169 AS FLOAT64) V1028169,
SAFE_CAST(V1028170 AS FLOAT64) V1028170,
SAFE_CAST(V1028171 AS FLOAT64) V1028171,
SAFE_CAST(V1028172 AS FLOAT64) V1028172,
SAFE_CAST(V1028173 AS FLOAT64) V1028173,
SAFE_CAST(V1028174 AS FLOAT64) V1028174,
SAFE_CAST(V1028175 AS FLOAT64) V1028175,
SAFE_CAST(V1028176 AS FLOAT64) V1028176,
SAFE_CAST(V1028177 AS FLOAT64) V1028177,
SAFE_CAST(V1028178 AS FLOAT64) V1028178,
SAFE_CAST(V1028179 AS FLOAT64) V1028179,
SAFE_CAST(V1028180 AS FLOAT64) V1028180,
SAFE_CAST(V1028181 AS FLOAT64) V1028181,
SAFE_CAST(V1028182 AS FLOAT64) V1028182,
SAFE_CAST(V1028183 AS FLOAT64) V1028183,
SAFE_CAST(V1028184 AS FLOAT64) V1028184,
SAFE_CAST(V1028185 AS FLOAT64) V1028185,
SAFE_CAST(V1028186 AS FLOAT64) V1028186,
SAFE_CAST(V1028187 AS FLOAT64) V1028187,
SAFE_CAST(V1028188 AS FLOAT64) V1028188,
SAFE_CAST(V1028189 AS FLOAT64) V1028189,
SAFE_CAST(V1028190 AS FLOAT64) V1028190,
SAFE_CAST(V1028191 AS FLOAT64) V1028191,
SAFE_CAST(V1028192 AS FLOAT64) V1028192,
SAFE_CAST(V1028193 AS FLOAT64) V1028193,
SAFE_CAST(V1028194 AS FLOAT64) V1028194,
SAFE_CAST(V1028195 AS FLOAT64) V1028195,
SAFE_CAST(V1028196 AS FLOAT64) V1028196,
SAFE_CAST(V1028197 AS FLOAT64) V1028197,
SAFE_CAST(V1028198 AS FLOAT64) V1028198,
SAFE_CAST(V1028199 AS FLOAT64) V1028199,
SAFE_CAST(V1028200 AS FLOAT64) V1028200,
SAFE_CAST(habitual AS FLOAT64) habitual,
SAFE_CAST(efetivo AS FLOAT64) efetivo
FROM basedosdados-dev.br_ibge_pnadc_staging.microdados AS t

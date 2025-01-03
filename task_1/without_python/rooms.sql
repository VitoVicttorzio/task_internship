CREATE TABLE rooms (
id int PRIMARY KEY,
name varchar (30),
FOREIGN KEY (id) REFERENCES students(id)
);

do $$

declare 

	json_data json;

begin 
	json_data := '[
    {
        "id": 0,
        "name": "Room #0"
    },
    {
        "id": 1,
        "name": "Room #1"
    },
    {
        "id": 2,
        "name": "Room #2"
    },
    {
        "id": 3,
        "name": "Room #3"
    },
    {
        "id": 4,
        "name": "Room #4"
    },
    {
        "id": 5,
        "name": "Room #5"
    },
    {
        "id": 6,
        "name": "Room #6"
    },
    {
        "id": 7,
        "name": "Room #7"
    },
    {
        "id": 8,
        "name": "Room #8"
    },
    {
        "id": 9,
        "name": "Room #9"
    },
    {
        "id": 10,
        "name": "Room #10"
    },
    {
        "id": 11,
        "name": "Room #11"
    },
    {
        "id": 12,
        "name": "Room #12"
    },
    {
        "id": 13,
        "name": "Room #13"
    },
    {
        "id": 14,
        "name": "Room #14"
    },
    {
        "id": 15,
        "name": "Room #15"
    },
    {
        "id": 16,
        "name": "Room #16"
    },
    {
        "id": 17,
        "name": "Room #17"
    },
    {
        "id": 18,
        "name": "Room #18"
    },
    {
        "id": 19,
        "name": "Room #19"
    },
    {
        "id": 20,
        "name": "Room #20"
    },
    {
        "id": 21,
        "name": "Room #21"
    },
    {
        "id": 22,
        "name": "Room #22"
    },
    {
        "id": 23,
        "name": "Room #23"
    },
    {
        "id": 24,
        "name": "Room #24"
    },
    {
        "id": 25,
        "name": "Room #25"
    },
    {
        "id": 26,
        "name": "Room #26"
    },
    {
        "id": 27,
        "name": "Room #27"
    },
    {
        "id": 28,
        "name": "Room #28"
    },
    {
        "id": 29,
        "name": "Room #29"
    },
    {
        "id": 30,
        "name": "Room #30"
    },
    {
        "id": 31,
        "name": "Room #31"
    },
    {
        "id": 32,
        "name": "Room #32"
    },
    {
        "id": 33,
        "name": "Room #33"
    },
    {
        "id": 34,
        "name": "Room #34"
    },
    {
        "id": 35,
        "name": "Room #35"
    },
    {
        "id": 36,
        "name": "Room #36"
    },
    {
        "id": 37,
        "name": "Room #37"
    },
    {
        "id": 38,
        "name": "Room #38"
    },
    {
        "id": 39,
        "name": "Room #39"
    },
    {
        "id": 40,
        "name": "Room #40"
    },
    {
        "id": 41,
        "name": "Room #41"
    },
    {
        "id": 42,
        "name": "Room #42"
    },
    {
        "id": 43,
        "name": "Room #43"
    },
    {
        "id": 44,
        "name": "Room #44"
    },
    {
        "id": 45,
        "name": "Room #45"
    },
    {
        "id": 46,
        "name": "Room #46"
    },
    {
        "id": 47,
        "name": "Room #47"
    },
    {
        "id": 48,
        "name": "Room #48"
    },
    {
        "id": 49,
        "name": "Room #49"
    },
    {
        "id": 50,
        "name": "Room #50"
    },
    {
        "id": 51,
        "name": "Room #51"
    },
    {
        "id": 52,
        "name": "Room #52"
    },
    {
        "id": 53,
        "name": "Room #53"
    },
    {
        "id": 54,
        "name": "Room #54"
    },
    {
        "id": 55,
        "name": "Room #55"
    },
    {
        "id": 56,
        "name": "Room #56"
    },
    {
        "id": 57,
        "name": "Room #57"
    },
    {
        "id": 58,
        "name": "Room #58"
    },
    {
        "id": 59,
        "name": "Room #59"
    },
    {
        "id": 60,
        "name": "Room #60"
    },
    {
        "id": 61,
        "name": "Room #61"
    },
    {
        "id": 62,
        "name": "Room #62"
    },
    {
        "id": 63,
        "name": "Room #63"
    },
    {
        "id": 64,
        "name": "Room #64"
    },
    {
        "id": 65,
        "name": "Room #65"
    },
    {
        "id": 66,
        "name": "Room #66"
    },
    {
        "id": 67,
        "name": "Room #67"
    },
    {
        "id": 68,
        "name": "Room #68"
    },
    {
        "id": 69,
        "name": "Room #69"
    },
    {
        "id": 70,
        "name": "Room #70"
    },
    {
        "id": 71,
        "name": "Room #71"
    },
    {
        "id": 72,
        "name": "Room #72"
    },
    {
        "id": 73,
        "name": "Room #73"
    },
    {
        "id": 74,
        "name": "Room #74"
    },
    {
        "id": 75,
        "name": "Room #75"
    },
    {
        "id": 76,
        "name": "Room #76"
    },
    {
        "id": 77,
        "name": "Room #77"
    },
    {
        "id": 78,
        "name": "Room #78"
    },
    {
        "id": 79,
        "name": "Room #79"
    },
    {
        "id": 80,
        "name": "Room #80"
    },
    {
        "id": 81,
        "name": "Room #81"
    },
    {
        "id": 82,
        "name": "Room #82"
    },
    {
        "id": 83,
        "name": "Room #83"
    },
    {
        "id": 84,
        "name": "Room #84"
    },
    {
        "id": 85,
        "name": "Room #85"
    },
    {
        "id": 86,
        "name": "Room #86"
    },
    {
        "id": 87,
        "name": "Room #87"
    },
    {
        "id": 88,
        "name": "Room #88"
    },
    {
        "id": 89,
        "name": "Room #89"
    },
    {
        "id": 90,
        "name": "Room #90"
    },
    {
        "id": 91,
        "name": "Room #91"
    },
    {
        "id": 92,
        "name": "Room #92"
    },
    {
        "id": 93,
        "name": "Room #93"
    },
    {
        "id": 94,
        "name": "Room #94"
    },
    {
        "id": 95,
        "name": "Room #95"
    },
    {
        "id": 96,
        "name": "Room #96"
    },
    {
        "id": 97,
        "name": "Room #97"
    },
    {
        "id": 98,
        "name": "Room #98"
    },
    {
        "id": 99,
        "name": "Room #99"
    },
    {
        "id": 100,
        "name": "Room #100"
    },
    {
        "id": 101,
        "name": "Room #101"
    },
    {
        "id": 102,
        "name": "Room #102"
    },
    {
        "id": 103,
        "name": "Room #103"
    },
    {
        "id": 104,
        "name": "Room #104"
    },
    {
        "id": 105,
        "name": "Room #105"
    },
    {
        "id": 106,
        "name": "Room #106"
    },
    {
        "id": 107,
        "name": "Room #107"
    },
    {
        "id": 108,
        "name": "Room #108"
    },
    {
        "id": 109,
        "name": "Room #109"
    },
    {
        "id": 110,
        "name": "Room #110"
    },
    {
        "id": 111,
        "name": "Room #111"
    },
    {
        "id": 112,
        "name": "Room #112"
    },
    {
        "id": 113,
        "name": "Room #113"
    },
    {
        "id": 114,
        "name": "Room #114"
    },
    {
        "id": 115,
        "name": "Room #115"
    },
    {
        "id": 116,
        "name": "Room #116"
    },
    {
        "id": 117,
        "name": "Room #117"
    },
    {
        "id": 118,
        "name": "Room #118"
    },
    {
        "id": 119,
        "name": "Room #119"
    },
    {
        "id": 120,
        "name": "Room #120"
    },
    {
        "id": 121,
        "name": "Room #121"
    },
    {
        "id": 122,
        "name": "Room #122"
    },
    {
        "id": 123,
        "name": "Room #123"
    },
    {
        "id": 124,
        "name": "Room #124"
    },
    {
        "id": 125,
        "name": "Room #125"
    },
    {
        "id": 126,
        "name": "Room #126"
    },
    {
        "id": 127,
        "name": "Room #127"
    },
    {
        "id": 128,
        "name": "Room #128"
    },
    {
        "id": 129,
        "name": "Room #129"
    },
    {
        "id": 130,
        "name": "Room #130"
    },
    {
        "id": 131,
        "name": "Room #131"
    },
    {
        "id": 132,
        "name": "Room #132"
    },
    {
        "id": 133,
        "name": "Room #133"
    },
    {
        "id": 134,
        "name": "Room #134"
    },
    {
        "id": 135,
        "name": "Room #135"
    },
    {
        "id": 136,
        "name": "Room #136"
    },
    {
        "id": 137,
        "name": "Room #137"
    },
    {
        "id": 138,
        "name": "Room #138"
    },
    {
        "id": 139,
        "name": "Room #139"
    },
    {
        "id": 140,
        "name": "Room #140"
    },
    {
        "id": 141,
        "name": "Room #141"
    },
    {
        "id": 142,
        "name": "Room #142"
    },
    {
        "id": 143,
        "name": "Room #143"
    },
    {
        "id": 144,
        "name": "Room #144"
    },
    {
        "id": 145,
        "name": "Room #145"
    },
    {
        "id": 146,
        "name": "Room #146"
    },
    {
        "id": 147,
        "name": "Room #147"
    },
    {
        "id": 148,
        "name": "Room #148"
    },
    {
        "id": 149,
        "name": "Room #149"
    },
    {
        "id": 150,
        "name": "Room #150"
    },
    {
        "id": 151,
        "name": "Room #151"
    },
    {
        "id": 152,
        "name": "Room #152"
    },
    {
        "id": 153,
        "name": "Room #153"
    },
    {
        "id": 154,
        "name": "Room #154"
    },
    {
        "id": 155,
        "name": "Room #155"
    },
    {
        "id": 156,
        "name": "Room #156"
    },
    {
        "id": 157,
        "name": "Room #157"
    },
    {
        "id": 158,
        "name": "Room #158"
    },
    {
        "id": 159,
        "name": "Room #159"
    },
    {
        "id": 160,
        "name": "Room #160"
    },
    {
        "id": 161,
        "name": "Room #161"
    },
    {
        "id": 162,
        "name": "Room #162"
    },
    {
        "id": 163,
        "name": "Room #163"
    },
    {
        "id": 164,
        "name": "Room #164"
    },
    {
        "id": 165,
        "name": "Room #165"
    },
    {
        "id": 166,
        "name": "Room #166"
    },
    {
        "id": 167,
        "name": "Room #167"
    },
    {
        "id": 168,
        "name": "Room #168"
    },
    {
        "id": 169,
        "name": "Room #169"
    },
    {
        "id": 170,
        "name": "Room #170"
    },
    {
        "id": 171,
        "name": "Room #171"
    },
    {
        "id": 172,
        "name": "Room #172"
    },
    {
        "id": 173,
        "name": "Room #173"
    },
    {
        "id": 174,
        "name": "Room #174"
    },
    {
        "id": 175,
        "name": "Room #175"
    },
    {
        "id": 176,
        "name": "Room #176"
    },
    {
        "id": 177,
        "name": "Room #177"
    },
    {
        "id": 178,
        "name": "Room #178"
    },
    {
        "id": 179,
        "name": "Room #179"
    },
    {
        "id": 180,
        "name": "Room #180"
    },
    {
        "id": 181,
        "name": "Room #181"
    },
    {
        "id": 182,
        "name": "Room #182"
    },
    {
        "id": 183,
        "name": "Room #183"
    },
    {
        "id": 184,
        "name": "Room #184"
    },
    {
        "id": 185,
        "name": "Room #185"
    },
    {
        "id": 186,
        "name": "Room #186"
    },
    {
        "id": 187,
        "name": "Room #187"
    },
    {
        "id": 188,
        "name": "Room #188"
    },
    {
        "id": 189,
        "name": "Room #189"
    },
    {
        "id": 190,
        "name": "Room #190"
    },
    {
        "id": 191,
        "name": "Room #191"
    },
    {
        "id": 192,
        "name": "Room #192"
    },
    {
        "id": 193,
        "name": "Room #193"
    },
    {
        "id": 194,
        "name": "Room #194"
    },
    {
        "id": 195,
        "name": "Room #195"
    },
    {
        "id": 196,
        "name": "Room #196"
    },
    {
        "id": 197,
        "name": "Room #197"
    },
    {
        "id": 198,
        "name": "Room #198"
    },
    {
        "id": 199,
        "name": "Room #199"
    },
    {
        "id": 200,
        "name": "Room #200"
    },
    {
        "id": 201,
        "name": "Room #201"
    },
    {
        "id": 202,
        "name": "Room #202"
    },
    {
        "id": 203,
        "name": "Room #203"
    },
    {
        "id": 204,
        "name": "Room #204"
    },
    {
        "id": 205,
        "name": "Room #205"
    },
    {
        "id": 206,
        "name": "Room #206"
    },
    {
        "id": 207,
        "name": "Room #207"
    },
    {
        "id": 208,
        "name": "Room #208"
    },
    {
        "id": 209,
        "name": "Room #209"
    },
    {
        "id": 210,
        "name": "Room #210"
    },
    {
        "id": 211,
        "name": "Room #211"
    },
    {
        "id": 212,
        "name": "Room #212"
    },
    {
        "id": 213,
        "name": "Room #213"
    },
    {
        "id": 214,
        "name": "Room #214"
    },
    {
        "id": 215,
        "name": "Room #215"
    },
    {
        "id": 216,
        "name": "Room #216"
    },
    {
        "id": 217,
        "name": "Room #217"
    },
    {
        "id": 218,
        "name": "Room #218"
    },
    {
        "id": 219,
        "name": "Room #219"
    },
    {
        "id": 220,
        "name": "Room #220"
    },
    {
        "id": 221,
        "name": "Room #221"
    },
    {
        "id": 222,
        "name": "Room #222"
    },
    {
        "id": 223,
        "name": "Room #223"
    },
    {
        "id": 224,
        "name": "Room #224"
    },
    {
        "id": 225,
        "name": "Room #225"
    },
    {
        "id": 226,
        "name": "Room #226"
    },
    {
        "id": 227,
        "name": "Room #227"
    },
    {
        "id": 228,
        "name": "Room #228"
    },
    {
        "id": 229,
        "name": "Room #229"
    },
    {
        "id": 230,
        "name": "Room #230"
    },
    {
        "id": 231,
        "name": "Room #231"
    },
    {
        "id": 232,
        "name": "Room #232"
    },
    {
        "id": 233,
        "name": "Room #233"
    },
    {
        "id": 234,
        "name": "Room #234"
    },
    {
        "id": 235,
        "name": "Room #235"
    },
    {
        "id": 236,
        "name": "Room #236"
    },
    {
        "id": 237,
        "name": "Room #237"
    },
    {
        "id": 238,
        "name": "Room #238"
    },
    {
        "id": 239,
        "name": "Room #239"
    },
    {
        "id": 240,
        "name": "Room #240"
    },
    {
        "id": 241,
        "name": "Room #241"
    },
    {
        "id": 242,
        "name": "Room #242"
    },
    {
        "id": 243,
        "name": "Room #243"
    },
    {
        "id": 244,
        "name": "Room #244"
    },
    {
        "id": 245,
        "name": "Room #245"
    },
    {
        "id": 246,
        "name": "Room #246"
    },
    {
        "id": 247,
        "name": "Room #247"
    },
    {
        "id": 248,
        "name": "Room #248"
    },
    {
        "id": 249,
        "name": "Room #249"
    },
    {
        "id": 250,
        "name": "Room #250"
    },
    {
        "id": 251,
        "name": "Room #251"
    },
    {
        "id": 252,
        "name": "Room #252"
    },
    {
        "id": 253,
        "name": "Room #253"
    },
    {
        "id": 254,
        "name": "Room #254"
    },
    {
        "id": 255,
        "name": "Room #255"
    },
    {
        "id": 256,
        "name": "Room #256"
    },
    {
        "id": 257,
        "name": "Room #257"
    },
    {
        "id": 258,
        "name": "Room #258"
    },
    {
        "id": 259,
        "name": "Room #259"
    },
    {
        "id": 260,
        "name": "Room #260"
    },
    {
        "id": 261,
        "name": "Room #261"
    },
    {
        "id": 262,
        "name": "Room #262"
    },
    {
        "id": 263,
        "name": "Room #263"
    },
    {
        "id": 264,
        "name": "Room #264"
    },
    {
        "id": 265,
        "name": "Room #265"
    },
    {
        "id": 266,
        "name": "Room #266"
    },
    {
        "id": 267,
        "name": "Room #267"
    },
    {
        "id": 268,
        "name": "Room #268"
    },
    {
        "id": 269,
        "name": "Room #269"
    },
    {
        "id": 270,
        "name": "Room #270"
    },
    {
        "id": 271,
        "name": "Room #271"
    },
    {
        "id": 272,
        "name": "Room #272"
    },
    {
        "id": 273,
        "name": "Room #273"
    },
    {
        "id": 274,
        "name": "Room #274"
    },
    {
        "id": 275,
        "name": "Room #275"
    },
    {
        "id": 276,
        "name": "Room #276"
    },
    {
        "id": 277,
        "name": "Room #277"
    },
    {
        "id": 278,
        "name": "Room #278"
    },
    {
        "id": 279,
        "name": "Room #279"
    },
    {
        "id": 280,
        "name": "Room #280"
    },
    {
        "id": 281,
        "name": "Room #281"
    },
    {
        "id": 282,
        "name": "Room #282"
    },
    {
        "id": 283,
        "name": "Room #283"
    },
    {
        "id": 284,
        "name": "Room #284"
    },
    {
        "id": 285,
        "name": "Room #285"
    },
    {
        "id": 286,
        "name": "Room #286"
    },
    {
        "id": 287,
        "name": "Room #287"
    },
    {
        "id": 288,
        "name": "Room #288"
    },
    {
        "id": 289,
        "name": "Room #289"
    },
    {
        "id": 290,
        "name": "Room #290"
    },
    {
        "id": 291,
        "name": "Room #291"
    },
    {
        "id": 292,
        "name": "Room #292"
    },
    {
        "id": 293,
        "name": "Room #293"
    },
    {
        "id": 294,
        "name": "Room #294"
    },
    {
        "id": 295,
        "name": "Room #295"
    },
    {
        "id": 296,
        "name": "Room #296"
    },
    {
        "id": 297,
        "name": "Room #297"
    },
    {
        "id": 298,
        "name": "Room #298"
    },
    {
        "id": 299,
        "name": "Room #299"
    },
    {
        "id": 300,
        "name": "Room #300"
    },
    {
        "id": 301,
        "name": "Room #301"
    },
    {
        "id": 302,
        "name": "Room #302"
    },
    {
        "id": 303,
        "name": "Room #303"
    },
    {
        "id": 304,
        "name": "Room #304"
    },
    {
        "id": 305,
        "name": "Room #305"
    },
    {
        "id": 306,
        "name": "Room #306"
    },
    {
        "id": 307,
        "name": "Room #307"
    },
    {
        "id": 308,
        "name": "Room #308"
    },
    {
        "id": 309,
        "name": "Room #309"
    },
    {
        "id": 310,
        "name": "Room #310"
    },
    {
        "id": 311,
        "name": "Room #311"
    },
    {
        "id": 312,
        "name": "Room #312"
    },
    {
        "id": 313,
        "name": "Room #313"
    },
    {
        "id": 314,
        "name": "Room #314"
    },
    {
        "id": 315,
        "name": "Room #315"
    },
    {
        "id": 316,
        "name": "Room #316"
    },
    {
        "id": 317,
        "name": "Room #317"
    },
    {
        "id": 318,
        "name": "Room #318"
    },
    {
        "id": 319,
        "name": "Room #319"
    },
    {
        "id": 320,
        "name": "Room #320"
    },
    {
        "id": 321,
        "name": "Room #321"
    },
    {
        "id": 322,
        "name": "Room #322"
    },
    {
        "id": 323,
        "name": "Room #323"
    },
    {
        "id": 324,
        "name": "Room #324"
    },
    {
        "id": 325,
        "name": "Room #325"
    },
    {
        "id": 326,
        "name": "Room #326"
    },
    {
        "id": 327,
        "name": "Room #327"
    },
    {
        "id": 328,
        "name": "Room #328"
    },
    {
        "id": 329,
        "name": "Room #329"
    },
    {
        "id": 330,
        "name": "Room #330"
    },
    {
        "id": 331,
        "name": "Room #331"
    },
    {
        "id": 332,
        "name": "Room #332"
    },
    {
        "id": 333,
        "name": "Room #333"
    },
    {
        "id": 334,
        "name": "Room #334"
    },
    {
        "id": 335,
        "name": "Room #335"
    },
    {
        "id": 336,
        "name": "Room #336"
    },
    {
        "id": 337,
        "name": "Room #337"
    },
    {
        "id": 338,
        "name": "Room #338"
    },
    {
        "id": 339,
        "name": "Room #339"
    },
    {
        "id": 340,
        "name": "Room #340"
    },
    {
        "id": 341,
        "name": "Room #341"
    },
    {
        "id": 342,
        "name": "Room #342"
    },
    {
        "id": 343,
        "name": "Room #343"
    },
    {
        "id": 344,
        "name": "Room #344"
    },
    {
        "id": 345,
        "name": "Room #345"
    },
    {
        "id": 346,
        "name": "Room #346"
    },
    {
        "id": 347,
        "name": "Room #347"
    },
    {
        "id": 348,
        "name": "Room #348"
    },
    {
        "id": 349,
        "name": "Room #349"
    },
    {
        "id": 350,
        "name": "Room #350"
    },
    {
        "id": 351,
        "name": "Room #351"
    },
    {
        "id": 352,
        "name": "Room #352"
    },
    {
        "id": 353,
        "name": "Room #353"
    },
    {
        "id": 354,
        "name": "Room #354"
    },
    {
        "id": 355,
        "name": "Room #355"
    },
    {
        "id": 356,
        "name": "Room #356"
    },
    {
        "id": 357,
        "name": "Room #357"
    },
    {
        "id": 358,
        "name": "Room #358"
    },
    {
        "id": 359,
        "name": "Room #359"
    },
    {
        "id": 360,
        "name": "Room #360"
    },
    {
        "id": 361,
        "name": "Room #361"
    },
    {
        "id": 362,
        "name": "Room #362"
    },
    {
        "id": 363,
        "name": "Room #363"
    },
    {
        "id": 364,
        "name": "Room #364"
    },
    {
        "id": 365,
        "name": "Room #365"
    },
    {
        "id": 366,
        "name": "Room #366"
    },
    {
        "id": 367,
        "name": "Room #367"
    },
    {
        "id": 368,
        "name": "Room #368"
    },
    {
        "id": 369,
        "name": "Room #369"
    },
    {
        "id": 370,
        "name": "Room #370"
    },
    {
        "id": 371,
        "name": "Room #371"
    },
    {
        "id": 372,
        "name": "Room #372"
    },
    {
        "id": 373,
        "name": "Room #373"
    },
    {
        "id": 374,
        "name": "Room #374"
    },
    {
        "id": 375,
        "name": "Room #375"
    },
    {
        "id": 376,
        "name": "Room #376"
    },
    {
        "id": 377,
        "name": "Room #377"
    },
    {
        "id": 378,
        "name": "Room #378"
    },
    {
        "id": 379,
        "name": "Room #379"
    },
    {
        "id": 380,
        "name": "Room #380"
    },
    {
        "id": 381,
        "name": "Room #381"
    },
    {
        "id": 382,
        "name": "Room #382"
    },
    {
        "id": 383,
        "name": "Room #383"
    },
    {
        "id": 384,
        "name": "Room #384"
    },
    {
        "id": 385,
        "name": "Room #385"
    },
    {
        "id": 386,
        "name": "Room #386"
    },
    {
        "id": 387,
        "name": "Room #387"
    },
    {
        "id": 388,
        "name": "Room #388"
    },
    {
        "id": 389,
        "name": "Room #389"
    },
    {
        "id": 390,
        "name": "Room #390"
    },
    {
        "id": 391,
        "name": "Room #391"
    },
    {
        "id": 392,
        "name": "Room #392"
    },
    {
        "id": 393,
        "name": "Room #393"
    },
    {
        "id": 394,
        "name": "Room #394"
    },
    {
        "id": 395,
        "name": "Room #395"
    },
    {
        "id": 396,
        "name": "Room #396"
    },
    {
        "id": 397,
        "name": "Room #397"
    },
    {
        "id": 398,
        "name": "Room #398"
    },
    {
        "id": 399,
        "name": "Room #399"
    },
    {
        "id": 400,
        "name": "Room #400"
    },
    {
        "id": 401,
        "name": "Room #401"
    },
    {
        "id": 402,
        "name": "Room #402"
    },
    {
        "id": 403,
        "name": "Room #403"
    },
    {
        "id": 404,
        "name": "Room #404"
    },
    {
        "id": 405,
        "name": "Room #405"
    },
    {
        "id": 406,
        "name": "Room #406"
    },
    {
        "id": 407,
        "name": "Room #407"
    },
    {
        "id": 408,
        "name": "Room #408"
    },
    {
        "id": 409,
        "name": "Room #409"
    },
    {
        "id": 410,
        "name": "Room #410"
    },
    {
        "id": 411,
        "name": "Room #411"
    },
    {
        "id": 412,
        "name": "Room #412"
    },
    {
        "id": 413,
        "name": "Room #413"
    },
    {
        "id": 414,
        "name": "Room #414"
    },
    {
        "id": 415,
        "name": "Room #415"
    },
    {
        "id": 416,
        "name": "Room #416"
    },
    {
        "id": 417,
        "name": "Room #417"
    },
    {
        "id": 418,
        "name": "Room #418"
    },
    {
        "id": 419,
        "name": "Room #419"
    },
    {
        "id": 420,
        "name": "Room #420"
    },
    {
        "id": 421,
        "name": "Room #421"
    },
    {
        "id": 422,
        "name": "Room #422"
    },
    {
        "id": 423,
        "name": "Room #423"
    },
    {
        "id": 424,
        "name": "Room #424"
    },
    {
        "id": 425,
        "name": "Room #425"
    },
    {
        "id": 426,
        "name": "Room #426"
    },
    {
        "id": 427,
        "name": "Room #427"
    },
    {
        "id": 428,
        "name": "Room #428"
    },
    {
        "id": 429,
        "name": "Room #429"
    },
    {
        "id": 430,
        "name": "Room #430"
    },
    {
        "id": 431,
        "name": "Room #431"
    },
    {
        "id": 432,
        "name": "Room #432"
    },
    {
        "id": 433,
        "name": "Room #433"
    },
    {
        "id": 434,
        "name": "Room #434"
    },
    {
        "id": 435,
        "name": "Room #435"
    },
    {
        "id": 436,
        "name": "Room #436"
    },
    {
        "id": 437,
        "name": "Room #437"
    },
    {
        "id": 438,
        "name": "Room #438"
    },
    {
        "id": 439,
        "name": "Room #439"
    },
    {
        "id": 440,
        "name": "Room #440"
    },
    {
        "id": 441,
        "name": "Room #441"
    },
    {
        "id": 442,
        "name": "Room #442"
    },
    {
        "id": 443,
        "name": "Room #443"
    },
    {
        "id": 444,
        "name": "Room #444"
    },
    {
        "id": 445,
        "name": "Room #445"
    },
    {
        "id": 446,
        "name": "Room #446"
    },
    {
        "id": 447,
        "name": "Room #447"
    },
    {
        "id": 448,
        "name": "Room #448"
    },
    {
        "id": 449,
        "name": "Room #449"
    },
    {
        "id": 450,
        "name": "Room #450"
    },
    {
        "id": 451,
        "name": "Room #451"
    },
    {
        "id": 452,
        "name": "Room #452"
    },
    {
        "id": 453,
        "name": "Room #453"
    },
    {
        "id": 454,
        "name": "Room #454"
    },
    {
        "id": 455,
        "name": "Room #455"
    },
    {
        "id": 456,
        "name": "Room #456"
    },
    {
        "id": 457,
        "name": "Room #457"
    },
    {
        "id": 458,
        "name": "Room #458"
    },
    {
        "id": 459,
        "name": "Room #459"
    },
    {
        "id": 460,
        "name": "Room #460"
    },
    {
        "id": 461,
        "name": "Room #461"
    },
    {
        "id": 462,
        "name": "Room #462"
    },
    {
        "id": 463,
        "name": "Room #463"
    },
    {
        "id": 464,
        "name": "Room #464"
    },
    {
        "id": 465,
        "name": "Room #465"
    },
    {
        "id": 466,
        "name": "Room #466"
    },
    {
        "id": 467,
        "name": "Room #467"
    },
    {
        "id": 468,
        "name": "Room #468"
    },
    {
        "id": 469,
        "name": "Room #469"
    },
    {
        "id": 470,
        "name": "Room #470"
    },
    {
        "id": 471,
        "name": "Room #471"
    },
    {
        "id": 472,
        "name": "Room #472"
    },
    {
        "id": 473,
        "name": "Room #473"
    },
    {
        "id": 474,
        "name": "Room #474"
    },
    {
        "id": 475,
        "name": "Room #475"
    },
    {
        "id": 476,
        "name": "Room #476"
    },
    {
        "id": 477,
        "name": "Room #477"
    },
    {
        "id": 478,
        "name": "Room #478"
    },
    {
        "id": 479,
        "name": "Room #479"
    },
    {
        "id": 480,
        "name": "Room #480"
    },
    {
        "id": 481,
        "name": "Room #481"
    },
    {
        "id": 482,
        "name": "Room #482"
    },
    {
        "id": 483,
        "name": "Room #483"
    },
    {
        "id": 484,
        "name": "Room #484"
    },
    {
        "id": 485,
        "name": "Room #485"
    },
    {
        "id": 486,
        "name": "Room #486"
    },
    {
        "id": 487,
        "name": "Room #487"
    },
    {
        "id": 488,
        "name": "Room #488"
    },
    {
        "id": 489,
        "name": "Room #489"
    },
    {
        "id": 490,
        "name": "Room #490"
    },
    {
        "id": 491,
        "name": "Room #491"
    },
    {
        "id": 492,
        "name": "Room #492"
    },
    {
        "id": 493,
        "name": "Room #493"
    },
    {
        "id": 494,
        "name": "Room #494"
    },
    {
        "id": 495,
        "name": "Room #495"
    },
    {
        "id": 496,
        "name": "Room #496"
    },
    {
        "id": 497,
        "name": "Room #497"
    },
    {
        "id": 498,
        "name": "Room #498"
    },
    {
        "id": 499,
        "name": "Room #499"
    },
    {
        "id": 500,
        "name": "Room #500"
    },
    {
        "id": 501,
        "name": "Room #501"
    },
    {
        "id": 502,
        "name": "Room #502"
    },
    {
        "id": 503,
        "name": "Room #503"
    },
    {
        "id": 504,
        "name": "Room #504"
    },
    {
        "id": 505,
        "name": "Room #505"
    },
    {
        "id": 506,
        "name": "Room #506"
    },
    {
        "id": 507,
        "name": "Room #507"
    },
    {
        "id": 508,
        "name": "Room #508"
    },
    {
        "id": 509,
        "name": "Room #509"
    },
    {
        "id": 510,
        "name": "Room #510"
    },
    {
        "id": 511,
        "name": "Room #511"
    },
    {
        "id": 512,
        "name": "Room #512"
    },
    {
        "id": 513,
        "name": "Room #513"
    },
    {
        "id": 514,
        "name": "Room #514"
    },
    {
        "id": 515,
        "name": "Room #515"
    },
    {
        "id": 516,
        "name": "Room #516"
    },
    {
        "id": 517,
        "name": "Room #517"
    },
    {
        "id": 518,
        "name": "Room #518"
    },
    {
        "id": 519,
        "name": "Room #519"
    },
    {
        "id": 520,
        "name": "Room #520"
    },
    {
        "id": 521,
        "name": "Room #521"
    },
    {
        "id": 522,
        "name": "Room #522"
    },
    {
        "id": 523,
        "name": "Room #523"
    },
    {
        "id": 524,
        "name": "Room #524"
    },
    {
        "id": 525,
        "name": "Room #525"
    },
    {
        "id": 526,
        "name": "Room #526"
    },
    {
        "id": 527,
        "name": "Room #527"
    },
    {
        "id": 528,
        "name": "Room #528"
    },
    {
        "id": 529,
        "name": "Room #529"
    },
    {
        "id": 530,
        "name": "Room #530"
    },
    {
        "id": 531,
        "name": "Room #531"
    },
    {
        "id": 532,
        "name": "Room #532"
    },
    {
        "id": 533,
        "name": "Room #533"
    },
    {
        "id": 534,
        "name": "Room #534"
    },
    {
        "id": 535,
        "name": "Room #535"
    },
    {
        "id": 536,
        "name": "Room #536"
    },
    {
        "id": 537,
        "name": "Room #537"
    },
    {
        "id": 538,
        "name": "Room #538"
    },
    {
        "id": 539,
        "name": "Room #539"
    },
    {
        "id": 540,
        "name": "Room #540"
    },
    {
        "id": 541,
        "name": "Room #541"
    },
    {
        "id": 542,
        "name": "Room #542"
    },
    {
        "id": 543,
        "name": "Room #543"
    },
    {
        "id": 544,
        "name": "Room #544"
    },
    {
        "id": 545,
        "name": "Room #545"
    },
    {
        "id": 546,
        "name": "Room #546"
    },
    {
        "id": 547,
        "name": "Room #547"
    },
    {
        "id": 548,
        "name": "Room #548"
    },
    {
        "id": 549,
        "name": "Room #549"
    },
    {
        "id": 550,
        "name": "Room #550"
    },
    {
        "id": 551,
        "name": "Room #551"
    },
    {
        "id": 552,
        "name": "Room #552"
    },
    {
        "id": 553,
        "name": "Room #553"
    },
    {
        "id": 554,
        "name": "Room #554"
    },
    {
        "id": 555,
        "name": "Room #555"
    },
    {
        "id": 556,
        "name": "Room #556"
    },
    {
        "id": 557,
        "name": "Room #557"
    },
    {
        "id": 558,
        "name": "Room #558"
    },
    {
        "id": 559,
        "name": "Room #559"
    },
    {
        "id": 560,
        "name": "Room #560"
    },
    {
        "id": 561,
        "name": "Room #561"
    },
    {
        "id": 562,
        "name": "Room #562"
    },
    {
        "id": 563,
        "name": "Room #563"
    },
    {
        "id": 564,
        "name": "Room #564"
    },
    {
        "id": 565,
        "name": "Room #565"
    },
    {
        "id": 566,
        "name": "Room #566"
    },
    {
        "id": 567,
        "name": "Room #567"
    },
    {
        "id": 568,
        "name": "Room #568"
    },
    {
        "id": 569,
        "name": "Room #569"
    },
    {
        "id": 570,
        "name": "Room #570"
    },
    {
        "id": 571,
        "name": "Room #571"
    },
    {
        "id": 572,
        "name": "Room #572"
    },
    {
        "id": 573,
        "name": "Room #573"
    },
    {
        "id": 574,
        "name": "Room #574"
    },
    {
        "id": 575,
        "name": "Room #575"
    },
    {
        "id": 576,
        "name": "Room #576"
    },
    {
        "id": 577,
        "name": "Room #577"
    },
    {
        "id": 578,
        "name": "Room #578"
    },
    {
        "id": 579,
        "name": "Room #579"
    },
    {
        "id": 580,
        "name": "Room #580"
    },
    {
        "id": 581,
        "name": "Room #581"
    },
    {
        "id": 582,
        "name": "Room #582"
    },
    {
        "id": 583,
        "name": "Room #583"
    },
    {
        "id": 584,
        "name": "Room #584"
    },
    {
        "id": 585,
        "name": "Room #585"
    },
    {
        "id": 586,
        "name": "Room #586"
    },
    {
        "id": 587,
        "name": "Room #587"
    },
    {
        "id": 588,
        "name": "Room #588"
    },
    {
        "id": 589,
        "name": "Room #589"
    },
    {
        "id": 590,
        "name": "Room #590"
    },
    {
        "id": 591,
        "name": "Room #591"
    },
    {
        "id": 592,
        "name": "Room #592"
    },
    {
        "id": 593,
        "name": "Room #593"
    },
    {
        "id": 594,
        "name": "Room #594"
    },
    {
        "id": 595,
        "name": "Room #595"
    },
    {
        "id": 596,
        "name": "Room #596"
    },
    {
        "id": 597,
        "name": "Room #597"
    },
    {
        "id": 598,
        "name": "Room #598"
    },
    {
        "id": 599,
        "name": "Room #599"
    },
    {
        "id": 600,
        "name": "Room #600"
    },
    {
        "id": 601,
        "name": "Room #601"
    },
    {
        "id": 602,
        "name": "Room #602"
    },
    {
        "id": 603,
        "name": "Room #603"
    },
    {
        "id": 604,
        "name": "Room #604"
    },
    {
        "id": 605,
        "name": "Room #605"
    },
    {
        "id": 606,
        "name": "Room #606"
    },
    {
        "id": 607,
        "name": "Room #607"
    },
    {
        "id": 608,
        "name": "Room #608"
    },
    {
        "id": 609,
        "name": "Room #609"
    },
    {
        "id": 610,
        "name": "Room #610"
    },
    {
        "id": 611,
        "name": "Room #611"
    },
    {
        "id": 612,
        "name": "Room #612"
    },
    {
        "id": 613,
        "name": "Room #613"
    },
    {
        "id": 614,
        "name": "Room #614"
    },
    {
        "id": 615,
        "name": "Room #615"
    },
    {
        "id": 616,
        "name": "Room #616"
    },
    {
        "id": 617,
        "name": "Room #617"
    },
    {
        "id": 618,
        "name": "Room #618"
    },
    {
        "id": 619,
        "name": "Room #619"
    },
    {
        "id": 620,
        "name": "Room #620"
    },
    {
        "id": 621,
        "name": "Room #621"
    },
    {
        "id": 622,
        "name": "Room #622"
    },
    {
        "id": 623,
        "name": "Room #623"
    },
    {
        "id": 624,
        "name": "Room #624"
    },
    {
        "id": 625,
        "name": "Room #625"
    },
    {
        "id": 626,
        "name": "Room #626"
    },
    {
        "id": 627,
        "name": "Room #627"
    },
    {
        "id": 628,
        "name": "Room #628"
    },
    {
        "id": 629,
        "name": "Room #629"
    },
    {
        "id": 630,
        "name": "Room #630"
    },
    {
        "id": 631,
        "name": "Room #631"
    },
    {
        "id": 632,
        "name": "Room #632"
    },
    {
        "id": 633,
        "name": "Room #633"
    },
    {
        "id": 634,
        "name": "Room #634"
    },
    {
        "id": 635,
        "name": "Room #635"
    },
    {
        "id": 636,
        "name": "Room #636"
    },
    {
        "id": 637,
        "name": "Room #637"
    },
    {
        "id": 638,
        "name": "Room #638"
    },
    {
        "id": 639,
        "name": "Room #639"
    },
    {
        "id": 640,
        "name": "Room #640"
    },
    {
        "id": 641,
        "name": "Room #641"
    },
    {
        "id": 642,
        "name": "Room #642"
    },
    {
        "id": 643,
        "name": "Room #643"
    },
    {
        "id": 644,
        "name": "Room #644"
    },
    {
        "id": 645,
        "name": "Room #645"
    },
    {
        "id": 646,
        "name": "Room #646"
    },
    {
        "id": 647,
        "name": "Room #647"
    },
    {
        "id": 648,
        "name": "Room #648"
    },
    {
        "id": 649,
        "name": "Room #649"
    },
    {
        "id": 650,
        "name": "Room #650"
    },
    {
        "id": 651,
        "name": "Room #651"
    },
    {
        "id": 652,
        "name": "Room #652"
    },
    {
        "id": 653,
        "name": "Room #653"
    },
    {
        "id": 654,
        "name": "Room #654"
    },
    {
        "id": 655,
        "name": "Room #655"
    },
    {
        "id": 656,
        "name": "Room #656"
    },
    {
        "id": 657,
        "name": "Room #657"
    },
    {
        "id": 658,
        "name": "Room #658"
    },
    {
        "id": 659,
        "name": "Room #659"
    },
    {
        "id": 660,
        "name": "Room #660"
    },
    {
        "id": 661,
        "name": "Room #661"
    },
    {
        "id": 662,
        "name": "Room #662"
    },
    {
        "id": 663,
        "name": "Room #663"
    },
    {
        "id": 664,
        "name": "Room #664"
    },
    {
        "id": 665,
        "name": "Room #665"
    },
    {
        "id": 666,
        "name": "Room #666"
    },
    {
        "id": 667,
        "name": "Room #667"
    },
    {
        "id": 668,
        "name": "Room #668"
    },
    {
        "id": 669,
        "name": "Room #669"
    },
    {
        "id": 670,
        "name": "Room #670"
    },
    {
        "id": 671,
        "name": "Room #671"
    },
    {
        "id": 672,
        "name": "Room #672"
    },
    {
        "id": 673,
        "name": "Room #673"
    },
    {
        "id": 674,
        "name": "Room #674"
    },
    {
        "id": 675,
        "name": "Room #675"
    },
    {
        "id": 676,
        "name": "Room #676"
    },
    {
        "id": 677,
        "name": "Room #677"
    },
    {
        "id": 678,
        "name": "Room #678"
    },
    {
        "id": 679,
        "name": "Room #679"
    },
    {
        "id": 680,
        "name": "Room #680"
    },
    {
        "id": 681,
        "name": "Room #681"
    },
    {
        "id": 682,
        "name": "Room #682"
    },
    {
        "id": 683,
        "name": "Room #683"
    },
    {
        "id": 684,
        "name": "Room #684"
    },
    {
        "id": 685,
        "name": "Room #685"
    },
    {
        "id": 686,
        "name": "Room #686"
    },
    {
        "id": 687,
        "name": "Room #687"
    },
    {
        "id": 688,
        "name": "Room #688"
    },
    {
        "id": 689,
        "name": "Room #689"
    },
    {
        "id": 690,
        "name": "Room #690"
    },
    {
        "id": 691,
        "name": "Room #691"
    },
    {
        "id": 692,
        "name": "Room #692"
    },
    {
        "id": 693,
        "name": "Room #693"
    },
    {
        "id": 694,
        "name": "Room #694"
    },
    {
        "id": 695,
        "name": "Room #695"
    },
    {
        "id": 696,
        "name": "Room #696"
    },
    {
        "id": 697,
        "name": "Room #697"
    },
    {
        "id": 698,
        "name": "Room #698"
    },
    {
        "id": 699,
        "name": "Room #699"
    },
    {
        "id": 700,
        "name": "Room #700"
    },
    {
        "id": 701,
        "name": "Room #701"
    },
    {
        "id": 702,
        "name": "Room #702"
    },
    {
        "id": 703,
        "name": "Room #703"
    },
    {
        "id": 704,
        "name": "Room #704"
    },
    {
        "id": 705,
        "name": "Room #705"
    },
    {
        "id": 706,
        "name": "Room #706"
    },
    {
        "id": 707,
        "name": "Room #707"
    },
    {
        "id": 708,
        "name": "Room #708"
    },
    {
        "id": 709,
        "name": "Room #709"
    },
    {
        "id": 710,
        "name": "Room #710"
    },
    {
        "id": 711,
        "name": "Room #711"
    },
    {
        "id": 712,
        "name": "Room #712"
    },
    {
        "id": 713,
        "name": "Room #713"
    },
    {
        "id": 714,
        "name": "Room #714"
    },
    {
        "id": 715,
        "name": "Room #715"
    },
    {
        "id": 716,
        "name": "Room #716"
    },
    {
        "id": 717,
        "name": "Room #717"
    },
    {
        "id": 718,
        "name": "Room #718"
    },
    {
        "id": 719,
        "name": "Room #719"
    },
    {
        "id": 720,
        "name": "Room #720"
    },
    {
        "id": 721,
        "name": "Room #721"
    },
    {
        "id": 722,
        "name": "Room #722"
    },
    {
        "id": 723,
        "name": "Room #723"
    },
    {
        "id": 724,
        "name": "Room #724"
    },
    {
        "id": 725,
        "name": "Room #725"
    },
    {
        "id": 726,
        "name": "Room #726"
    },
    {
        "id": 727,
        "name": "Room #727"
    },
    {
        "id": 728,
        "name": "Room #728"
    },
    {
        "id": 729,
        "name": "Room #729"
    },
    {
        "id": 730,
        "name": "Room #730"
    },
    {
        "id": 731,
        "name": "Room #731"
    },
    {
        "id": 732,
        "name": "Room #732"
    },
    {
        "id": 733,
        "name": "Room #733"
    },
    {
        "id": 734,
        "name": "Room #734"
    },
    {
        "id": 735,
        "name": "Room #735"
    },
    {
        "id": 736,
        "name": "Room #736"
    },
    {
        "id": 737,
        "name": "Room #737"
    },
    {
        "id": 738,
        "name": "Room #738"
    },
    {
        "id": 739,
        "name": "Room #739"
    },
    {
        "id": 740,
        "name": "Room #740"
    },
    {
        "id": 741,
        "name": "Room #741"
    },
    {
        "id": 742,
        "name": "Room #742"
    },
    {
        "id": 743,
        "name": "Room #743"
    },
    {
        "id": 744,
        "name": "Room #744"
    },
    {
        "id": 745,
        "name": "Room #745"
    },
    {
        "id": 746,
        "name": "Room #746"
    },
    {
        "id": 747,
        "name": "Room #747"
    },
    {
        "id": 748,
        "name": "Room #748"
    },
    {
        "id": 749,
        "name": "Room #749"
    },
    {
        "id": 750,
        "name": "Room #750"
    },
    {
        "id": 751,
        "name": "Room #751"
    },
    {
        "id": 752,
        "name": "Room #752"
    },
    {
        "id": 753,
        "name": "Room #753"
    },
    {
        "id": 754,
        "name": "Room #754"
    },
    {
        "id": 755,
        "name": "Room #755"
    },
    {
        "id": 756,
        "name": "Room #756"
    },
    {
        "id": 757,
        "name": "Room #757"
    },
    {
        "id": 758,
        "name": "Room #758"
    },
    {
        "id": 759,
        "name": "Room #759"
    },
    {
        "id": 760,
        "name": "Room #760"
    },
    {
        "id": 761,
        "name": "Room #761"
    },
    {
        "id": 762,
        "name": "Room #762"
    },
    {
        "id": 763,
        "name": "Room #763"
    },
    {
        "id": 764,
        "name": "Room #764"
    },
    {
        "id": 765,
        "name": "Room #765"
    },
    {
        "id": 766,
        "name": "Room #766"
    },
    {
        "id": 767,
        "name": "Room #767"
    },
    {
        "id": 768,
        "name": "Room #768"
    },
    {
        "id": 769,
        "name": "Room #769"
    },
    {
        "id": 770,
        "name": "Room #770"
    },
    {
        "id": 771,
        "name": "Room #771"
    },
    {
        "id": 772,
        "name": "Room #772"
    },
    {
        "id": 773,
        "name": "Room #773"
    },
    {
        "id": 774,
        "name": "Room #774"
    },
    {
        "id": 775,
        "name": "Room #775"
    },
    {
        "id": 776,
        "name": "Room #776"
    },
    {
        "id": 777,
        "name": "Room #777"
    },
    {
        "id": 778,
        "name": "Room #778"
    },
    {
        "id": 779,
        "name": "Room #779"
    },
    {
        "id": 780,
        "name": "Room #780"
    },
    {
        "id": 781,
        "name": "Room #781"
    },
    {
        "id": 782,
        "name": "Room #782"
    },
    {
        "id": 783,
        "name": "Room #783"
    },
    {
        "id": 784,
        "name": "Room #784"
    },
    {
        "id": 785,
        "name": "Room #785"
    },
    {
        "id": 786,
        "name": "Room #786"
    },
    {
        "id": 787,
        "name": "Room #787"
    },
    {
        "id": 788,
        "name": "Room #788"
    },
    {
        "id": 789,
        "name": "Room #789"
    },
    {
        "id": 790,
        "name": "Room #790"
    },
    {
        "id": 791,
        "name": "Room #791"
    },
    {
        "id": 792,
        "name": "Room #792"
    },
    {
        "id": 793,
        "name": "Room #793"
    },
    {
        "id": 794,
        "name": "Room #794"
    },
    {
        "id": 795,
        "name": "Room #795"
    },
    {
        "id": 796,
        "name": "Room #796"
    },
    {
        "id": 797,
        "name": "Room #797"
    },
    {
        "id": 798,
        "name": "Room #798"
    },
    {
        "id": 799,
        "name": "Room #799"
    },
    {
        "id": 800,
        "name": "Room #800"
    },
    {
        "id": 801,
        "name": "Room #801"
    },
    {
        "id": 802,
        "name": "Room #802"
    },
    {
        "id": 803,
        "name": "Room #803"
    },
    {
        "id": 804,
        "name": "Room #804"
    },
    {
        "id": 805,
        "name": "Room #805"
    },
    {
        "id": 806,
        "name": "Room #806"
    },
    {
        "id": 807,
        "name": "Room #807"
    },
    {
        "id": 808,
        "name": "Room #808"
    },
    {
        "id": 809,
        "name": "Room #809"
    },
    {
        "id": 810,
        "name": "Room #810"
    },
    {
        "id": 811,
        "name": "Room #811"
    },
    {
        "id": 812,
        "name": "Room #812"
    },
    {
        "id": 813,
        "name": "Room #813"
    },
    {
        "id": 814,
        "name": "Room #814"
    },
    {
        "id": 815,
        "name": "Room #815"
    },
    {
        "id": 816,
        "name": "Room #816"
    },
    {
        "id": 817,
        "name": "Room #817"
    },
    {
        "id": 818,
        "name": "Room #818"
    },
    {
        "id": 819,
        "name": "Room #819"
    },
    {
        "id": 820,
        "name": "Room #820"
    },
    {
        "id": 821,
        "name": "Room #821"
    },
    {
        "id": 822,
        "name": "Room #822"
    },
    {
        "id": 823,
        "name": "Room #823"
    },
    {
        "id": 824,
        "name": "Room #824"
    },
    {
        "id": 825,
        "name": "Room #825"
    },
    {
        "id": 826,
        "name": "Room #826"
    },
    {
        "id": 827,
        "name": "Room #827"
    },
    {
        "id": 828,
        "name": "Room #828"
    },
    {
        "id": 829,
        "name": "Room #829"
    },
    {
        "id": 830,
        "name": "Room #830"
    },
    {
        "id": 831,
        "name": "Room #831"
    },
    {
        "id": 832,
        "name": "Room #832"
    },
    {
        "id": 833,
        "name": "Room #833"
    },
    {
        "id": 834,
        "name": "Room #834"
    },
    {
        "id": 835,
        "name": "Room #835"
    },
    {
        "id": 836,
        "name": "Room #836"
    },
    {
        "id": 837,
        "name": "Room #837"
    },
    {
        "id": 838,
        "name": "Room #838"
    },
    {
        "id": 839,
        "name": "Room #839"
    },
    {
        "id": 840,
        "name": "Room #840"
    },
    {
        "id": 841,
        "name": "Room #841"
    },
    {
        "id": 842,
        "name": "Room #842"
    },
    {
        "id": 843,
        "name": "Room #843"
    },
    {
        "id": 844,
        "name": "Room #844"
    },
    {
        "id": 845,
        "name": "Room #845"
    },
    {
        "id": 846,
        "name": "Room #846"
    },
    {
        "id": 847,
        "name": "Room #847"
    },
    {
        "id": 848,
        "name": "Room #848"
    },
    {
        "id": 849,
        "name": "Room #849"
    },
    {
        "id": 850,
        "name": "Room #850"
    },
    {
        "id": 851,
        "name": "Room #851"
    },
    {
        "id": 852,
        "name": "Room #852"
    },
    {
        "id": 853,
        "name": "Room #853"
    },
    {
        "id": 854,
        "name": "Room #854"
    },
    {
        "id": 855,
        "name": "Room #855"
    },
    {
        "id": 856,
        "name": "Room #856"
    },
    {
        "id": 857,
        "name": "Room #857"
    },
    {
        "id": 858,
        "name": "Room #858"
    },
    {
        "id": 859,
        "name": "Room #859"
    },
    {
        "id": 860,
        "name": "Room #860"
    },
    {
        "id": 861,
        "name": "Room #861"
    },
    {
        "id": 862,
        "name": "Room #862"
    },
    {
        "id": 863,
        "name": "Room #863"
    },
    {
        "id": 864,
        "name": "Room #864"
    },
    {
        "id": 865,
        "name": "Room #865"
    },
    {
        "id": 866,
        "name": "Room #866"
    },
    {
        "id": 867,
        "name": "Room #867"
    },
    {
        "id": 868,
        "name": "Room #868"
    },
    {
        "id": 869,
        "name": "Room #869"
    },
    {
        "id": 870,
        "name": "Room #870"
    },
    {
        "id": 871,
        "name": "Room #871"
    },
    {
        "id": 872,
        "name": "Room #872"
    },
    {
        "id": 873,
        "name": "Room #873"
    },
    {
        "id": 874,
        "name": "Room #874"
    },
    {
        "id": 875,
        "name": "Room #875"
    },
    {
        "id": 876,
        "name": "Room #876"
    },
    {
        "id": 877,
        "name": "Room #877"
    },
    {
        "id": 878,
        "name": "Room #878"
    },
    {
        "id": 879,
        "name": "Room #879"
    },
    {
        "id": 880,
        "name": "Room #880"
    },
    {
        "id": 881,
        "name": "Room #881"
    },
    {
        "id": 882,
        "name": "Room #882"
    },
    {
        "id": 883,
        "name": "Room #883"
    },
    {
        "id": 884,
        "name": "Room #884"
    },
    {
        "id": 885,
        "name": "Room #885"
    },
    {
        "id": 886,
        "name": "Room #886"
    },
    {
        "id": 887,
        "name": "Room #887"
    },
    {
        "id": 888,
        "name": "Room #888"
    },
    {
        "id": 889,
        "name": "Room #889"
    },
    {
        "id": 890,
        "name": "Room #890"
    },
    {
        "id": 891,
        "name": "Room #891"
    },
    {
        "id": 892,
        "name": "Room #892"
    },
    {
        "id": 893,
        "name": "Room #893"
    },
    {
        "id": 894,
        "name": "Room #894"
    },
    {
        "id": 895,
        "name": "Room #895"
    },
    {
        "id": 896,
        "name": "Room #896"
    },
    {
        "id": 897,
        "name": "Room #897"
    },
    {
        "id": 898,
        "name": "Room #898"
    },
    {
        "id": 899,
        "name": "Room #899"
    },
    {
        "id": 900,
        "name": "Room #900"
    },
    {
        "id": 901,
        "name": "Room #901"
    },
    {
        "id": 902,
        "name": "Room #902"
    },
    {
        "id": 903,
        "name": "Room #903"
    },
    {
        "id": 904,
        "name": "Room #904"
    },
    {
        "id": 905,
        "name": "Room #905"
    },
    {
        "id": 906,
        "name": "Room #906"
    },
    {
        "id": 907,
        "name": "Room #907"
    },
    {
        "id": 908,
        "name": "Room #908"
    },
    {
        "id": 909,
        "name": "Room #909"
    },
    {
        "id": 910,
        "name": "Room #910"
    },
    {
        "id": 911,
        "name": "Room #911"
    },
    {
        "id": 912,
        "name": "Room #912"
    },
    {
        "id": 913,
        "name": "Room #913"
    },
    {
        "id": 914,
        "name": "Room #914"
    },
    {
        "id": 915,
        "name": "Room #915"
    },
    {
        "id": 916,
        "name": "Room #916"
    },
    {
        "id": 917,
        "name": "Room #917"
    },
    {
        "id": 918,
        "name": "Room #918"
    },
    {
        "id": 919,
        "name": "Room #919"
    },
    {
        "id": 920,
        "name": "Room #920"
    },
    {
        "id": 921,
        "name": "Room #921"
    },
    {
        "id": 922,
        "name": "Room #922"
    },
    {
        "id": 923,
        "name": "Room #923"
    },
    {
        "id": 924,
        "name": "Room #924"
    },
    {
        "id": 925,
        "name": "Room #925"
    },
    {
        "id": 926,
        "name": "Room #926"
    },
    {
        "id": 927,
        "name": "Room #927"
    },
    {
        "id": 928,
        "name": "Room #928"
    },
    {
        "id": 929,
        "name": "Room #929"
    },
    {
        "id": 930,
        "name": "Room #930"
    },
    {
        "id": 931,
        "name": "Room #931"
    },
    {
        "id": 932,
        "name": "Room #932"
    },
    {
        "id": 933,
        "name": "Room #933"
    },
    {
        "id": 934,
        "name": "Room #934"
    },
    {
        "id": 935,
        "name": "Room #935"
    },
    {
        "id": 936,
        "name": "Room #936"
    },
    {
        "id": 937,
        "name": "Room #937"
    },
    {
        "id": 938,
        "name": "Room #938"
    },
    {
        "id": 939,
        "name": "Room #939"
    },
    {
        "id": 940,
        "name": "Room #940"
    },
    {
        "id": 941,
        "name": "Room #941"
    },
    {
        "id": 942,
        "name": "Room #942"
    },
    {
        "id": 943,
        "name": "Room #943"
    },
    {
        "id": 944,
        "name": "Room #944"
    },
    {
        "id": 945,
        "name": "Room #945"
    },
    {
        "id": 946,
        "name": "Room #946"
    },
    {
        "id": 947,
        "name": "Room #947"
    },
    {
        "id": 948,
        "name": "Room #948"
    },
    {
        "id": 949,
        "name": "Room #949"
    },
    {
        "id": 950,
        "name": "Room #950"
    },
    {
        "id": 951,
        "name": "Room #951"
    },
    {
        "id": 952,
        "name": "Room #952"
    },
    {
        "id": 953,
        "name": "Room #953"
    },
    {
        "id": 954,
        "name": "Room #954"
    },
    {
        "id": 955,
        "name": "Room #955"
    },
    {
        "id": 956,
        "name": "Room #956"
    },
    {
        "id": 957,
        "name": "Room #957"
    },
    {
        "id": 958,
        "name": "Room #958"
    },
    {
        "id": 959,
        "name": "Room #959"
    },
    {
        "id": 960,
        "name": "Room #960"
    },
    {
        "id": 961,
        "name": "Room #961"
    },
    {
        "id": 962,
        "name": "Room #962"
    },
    {
        "id": 963,
        "name": "Room #963"
    },
    {
        "id": 964,
        "name": "Room #964"
    },
    {
        "id": 965,
        "name": "Room #965"
    },
    {
        "id": 966,
        "name": "Room #966"
    },
    {
        "id": 967,
        "name": "Room #967"
    },
    {
        "id": 968,
        "name": "Room #968"
    },
    {
        "id": 969,
        "name": "Room #969"
    },
    {
        "id": 970,
        "name": "Room #970"
    },
    {
        "id": 971,
        "name": "Room #971"
    },
    {
        "id": 972,
        "name": "Room #972"
    },
    {
        "id": 973,
        "name": "Room #973"
    },
    {
        "id": 974,
        "name": "Room #974"
    },
    {
        "id": 975,
        "name": "Room #975"
    },
    {
        "id": 976,
        "name": "Room #976"
    },
    {
        "id": 977,
        "name": "Room #977"
    },
    {
        "id": 978,
        "name": "Room #978"
    },
    {
        "id": 979,
        "name": "Room #979"
    },
    {
        "id": 980,
        "name": "Room #980"
    },
    {
        "id": 981,
        "name": "Room #981"
    },
    {
        "id": 982,
        "name": "Room #982"
    },
    {
        "id": 983,
        "name": "Room #983"
    },
    {
        "id": 984,
        "name": "Room #984"
    },
    {
        "id": 985,
        "name": "Room #985"
    },
    {
        "id": 986,
        "name": "Room #986"
    },
    {
        "id": 987,
        "name": "Room #987"
    },
    {
        "id": 988,
        "name": "Room #988"
    },
    {
        "id": 989,
        "name": "Room #989"
    },
    {
        "id": 990,
        "name": "Room #990"
    },
    {
        "id": 991,
        "name": "Room #991"
    },
    {
        "id": 992,
        "name": "Room #992"
    },
    {
        "id": 993,
        "name": "Room #993"
    },
    {
        "id": 994,
        "name": "Room #994"
    },
    {
        "id": 995,
        "name": "Room #995"
    },
    {
        "id": 996,
        "name": "Room #996"
    },
    {
        "id": 997,
        "name": "Room #997"
    },
    {
        "id": 998,
        "name": "Room #998"
    },
    {
        "id": 999,
        "name": "Room #999"
    }
]';


RAISE NOTICE 'JSON Data: %', json_data;
 
  INSERT INTO rooms (id, name)
    SELECT 
        (json_item->>'id')::INT AS id,
        json_item->>'name' AS name
    FROM json_array_elements(json_data) AS json_item;

END $$;


print("lib start21")
-- / Locals
local Workspace = game:GetService("Workspace")
local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()

-- / Services
local UserInputService = game:GetService("UserInputService")
local TextService = game:GetService("TextService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local CoreGuiService = game:GetService("CoreGui")
local ContentService = game:GetService("ContentProvider")
local TeleportService = game:GetService("TeleportService")

-- / Tween table & function
local TweenTable = {
    Default = {
        TweenInfo.new(0.17, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, 0, false, 0)
    }
}
print("made it to table")
local assets = {
	["lucide-accessibility"] = "rbxassetid://10709751939",
		["lucide-activity"] = "rbxassetid://10709752035",
		["lucide-air-vent"] = "rbxassetid://10709752131",
		["lucide-airplay"] = "rbxassetid://10709752254",
		["lucide-alarm-check"] = "rbxassetid://10709752405",
		["lucide-alarm-clock"] = "rbxassetid://10709752630",
		["lucide-alarm-clock-off"] = "rbxassetid://10709752508",
		["lucide-alarm-minus"] = "rbxassetid://10709752732",
		["lucide-alarm-plus"] = "rbxassetid://10709752825",
		["lucide-album"] = "rbxassetid://10709752906",
		["lucide-alert-circle"] = "rbxassetid://10709752996",
		["lucide-alert-octagon"] = "rbxassetid://10709753064",
		["lucide-alert-triangle"] = "rbxassetid://10709753149",
		["lucide-align-center"] = "rbxassetid://10709753570",
		["lucide-align-center-horizontal"] = "rbxassetid://10709753272",
		["lucide-align-center-vertical"] = "rbxassetid://10709753421",
		["lucide-align-end-horizontal"] = "rbxassetid://10709753692",
		["lucide-align-end-vertical"] = "rbxassetid://10709753808",
		["lucide-align-horizontal-distribute-center"] = "rbxassetid://10747779791",
		["lucide-align-horizontal-distribute-end"] = "rbxassetid://10747784534",
		["lucide-align-horizontal-distribute-start"] = "rbxassetid://10709754118",
		["lucide-align-horizontal-justify-center"] = "rbxassetid://10709754204",
		["lucide-align-horizontal-justify-end"] = "rbxassetid://10709754317",
		["lucide-align-horizontal-justify-start"] = "rbxassetid://10709754436",
		["lucide-align-horizontal-space-around"] = "rbxassetid://10709754590",
		["lucide-align-horizontal-space-between"] = "rbxassetid://10709754749",
		["lucide-align-justify"] = "rbxassetid://10709759610",
		["lucide-align-left"] = "rbxassetid://10709759764",
		["lucide-align-right"] = "rbxassetid://10709759895",
		["lucide-align-start-horizontal"] = "rbxassetid://10709760051",
		["lucide-align-start-vertical"] = "rbxassetid://10709760244",
		["lucide-align-vertical-distribute-center"] = "rbxassetid://10709760351",
		["lucide-align-vertical-distribute-end"] = "rbxassetid://10709760434",
		["lucide-align-vertical-distribute-start"] = "rbxassetid://10709760612",
		["lucide-align-vertical-justify-center"] = "rbxassetid://10709760814",
		["lucide-align-vertical-justify-end"] = "rbxassetid://10709761003",
		["lucide-align-vertical-justify-start"] = "rbxassetid://10709761176",
		["lucide-align-vertical-space-around"] = "rbxassetid://10709761324",
		["lucide-align-vertical-space-between"] = "rbxassetid://10709761434",
		["lucide-anchor"] = "rbxassetid://10709761530",
		["lucide-angry"] = "rbxassetid://10709761629",
		["lucide-annoyed"] = "rbxassetid://10709761722",
		["lucide-aperture"] = "rbxassetid://10709761813",
		["lucide-apple"] = "rbxassetid://10709761889",
		["lucide-archive"] = "rbxassetid://10709762233",
		["lucide-archive-restore"] = "rbxassetid://10709762058",
		["lucide-armchair"] = "rbxassetid://10709762327",
		["lucide-arrow-big-down"] = "rbxassetid://10747796644",
		["lucide-arrow-big-left"] = "rbxassetid://10709762574",
		["lucide-arrow-big-right"] = "rbxassetid://10709762727",
		["lucide-arrow-big-up"] = "rbxassetid://10709762879",
		["lucide-arrow-down"] = "rbxassetid://10709767827",
		["lucide-arrow-down-circle"] = "rbxassetid://10709763034",
		["lucide-arrow-down-left"] = "rbxassetid://10709767656",
		["lucide-arrow-down-right"] = "rbxassetid://10709767750",
		["lucide-arrow-left"] = "rbxassetid://10709768114",
		["lucide-arrow-left-circle"] = "rbxassetid://10709767936",
		["lucide-arrow-left-right"] = "rbxassetid://10709768019",
		["lucide-arrow-right"] = "rbxassetid://10709768347",
		["lucide-arrow-right-circle"] = "rbxassetid://10709768226",
		["lucide-arrow-up"] = "rbxassetid://10709768939",
		["lucide-arrow-up-circle"] = "rbxassetid://10709768432",
		["lucide-arrow-up-down"] = "rbxassetid://10709768538",
		["lucide-arrow-up-left"] = "rbxassetid://10709768661",
		["lucide-arrow-up-right"] = "rbxassetid://10709768787",
		["lucide-asterisk"] = "rbxassetid://10709769095",
		["lucide-at-sign"] = "rbxassetid://10709769286",
		["lucide-award"] = "rbxassetid://10709769406",
		["lucide-axe"] = "rbxassetid://10709769508",
		["lucide-axis-3d"] = "rbxassetid://10709769598",
		["lucide-baby"] = "rbxassetid://10709769732",
		["lucide-backpack"] = "rbxassetid://10709769841",
		["lucide-baggage-claim"] = "rbxassetid://10709769935",
		["lucide-banana"] = "rbxassetid://10709770005",
		["lucide-banknote"] = "rbxassetid://10709770178",
		["lucide-bar-chart"] = "rbxassetid://10709773755",
		["lucide-bar-chart-2"] = "rbxassetid://10709770317",
		["lucide-bar-chart-3"] = "rbxassetid://10709770431",
		["lucide-bar-chart-4"] = "rbxassetid://10709770560",
		["lucide-bar-chart-horizontal"] = "rbxassetid://10709773669",
		["lucide-barcode"] = "rbxassetid://10747360675",
		["lucide-baseline"] = "rbxassetid://10709773863",
		["lucide-bath"] = "rbxassetid://10709773963",
		["lucide-battery"] = "rbxassetid://10709774640",
		["lucide-battery-charging"] = "rbxassetid://10709774068",
		["lucide-battery-full"] = "rbxassetid://10709774206",
		["lucide-battery-low"] = "rbxassetid://10709774370",
		["lucide-battery-medium"] = "rbxassetid://10709774513",
		["lucide-beaker"] = "rbxassetid://10709774756",
		["lucide-bed"] = "rbxassetid://10709775036",
		["lucide-bed-double"] = "rbxassetid://10709774864",
		["lucide-bed-single"] = "rbxassetid://10709774968",
		["lucide-beer"] = "rbxassetid://10709775167",
		["lucide-bell"] = "rbxassetid://10709775704",
		["lucide-bell-minus"] = "rbxassetid://10709775241",
		["lucide-bell-off"] = "rbxassetid://10709775320",
		["lucide-bell-plus"] = "rbxassetid://10709775448",
		["lucide-bell-ring"] = "rbxassetid://10709775560",
		["lucide-bike"] = "rbxassetid://10709775894",
		["lucide-binary"] = "rbxassetid://10709776050",
		["lucide-bitcoin"] = "rbxassetid://10709776126",
		["lucide-bluetooth"] = "rbxassetid://10709776655",
		["lucide-bluetooth-connected"] = "rbxassetid://10709776240",
		["lucide-bluetooth-off"] = "rbxassetid://10709776344",
		["lucide-bluetooth-searching"] = "rbxassetid://10709776501",
		["lucide-bold"] = "rbxassetid://10747813908",
		["lucide-bomb"] = "rbxassetid://10709781460",
		["lucide-bone"] = "rbxassetid://10709781605",
		["lucide-book"] = "rbxassetid://10709781824",
		["lucide-book-open"] = "rbxassetid://10709781717",
		["lucide-bookmark"] = "rbxassetid://10709782154",
		["lucide-bookmark-minus"] = "rbxassetid://10709781919",
		["lucide-bookmark-plus"] = "rbxassetid://10709782044",
		["lucide-bot"] = "rbxassetid://10709782230",
		["lucide-box"] = "rbxassetid://10709782497",
		["lucide-box-select"] = "rbxassetid://10709782342",
		["lucide-boxes"] = "rbxassetid://10709782582",
		["lucide-briefcase"] = "rbxassetid://10709782662",
		["lucide-brush"] = "rbxassetid://10709782758",
		["lucide-bug"] = "rbxassetid://10709782845",
		["lucide-building"] = "rbxassetid://10709783051",
		["lucide-building-2"] = "rbxassetid://10709782939",
		["lucide-bus"] = "rbxassetid://10709783137",
		["lucide-cake"] = "rbxassetid://10709783217",
		["lucide-calculator"] = "rbxassetid://10709783311",
		["lucide-calendar"] = "rbxassetid://10709789505",
		["lucide-calendar-check"] = "rbxassetid://10709783474",
		["lucide-calendar-check-2"] = "rbxassetid://10709783392",
		["lucide-calendar-clock"] = "rbxassetid://10709783577",
		["lucide-calendar-days"] = "rbxassetid://10709783673",
		["lucide-calendar-heart"] = "rbxassetid://10709783835",
		["lucide-calendar-minus"] = "rbxassetid://10709783959",
		["lucide-calendar-off"] = "rbxassetid://10709788784",
		["lucide-calendar-plus"] = "rbxassetid://10709788937",
		["lucide-calendar-range"] = "rbxassetid://10709789053",
		["lucide-calendar-search"] = "rbxassetid://10709789200",
		["lucide-calendar-x"] = "rbxassetid://10709789407",
		["lucide-calendar-x-2"] = "rbxassetid://10709789329",
		["lucide-camera"] = "rbxassetid://10709789686",
		["lucide-camera-off"] = "rbxassetid://10747822677",
		["lucide-car"] = "rbxassetid://10709789810",
		["lucide-carrot"] = "rbxassetid://10709789960",
		["lucide-cast"] = "rbxassetid://10709790097",
		["lucide-charge"] = "rbxassetid://10709790202",
		["lucide-check"] = "rbxassetid://10709790644",
		["lucide-check-circle"] = "rbxassetid://10709790387",
		["lucide-check-circle-2"] = "rbxassetid://10709790298",
		["lucide-check-square"] = "rbxassetid://10709790537",
		["lucide-chef-hat"] = "rbxassetid://10709790757",
		["lucide-cherry"] = "rbxassetid://10709790875",
		["lucide-chevron-down"] = "rbxassetid://10709790948",
		["lucide-chevron-first"] = "rbxassetid://10709791015",
		["lucide-chevron-last"] = "rbxassetid://10709791130",
		["lucide-chevron-left"] = "rbxassetid://10709791281",
		["lucide-chevron-right"] = "rbxassetid://10709791437",
		["lucide-chevron-up"] = "rbxassetid://10709791523",
		["lucide-chevrons-down"] = "rbxassetid://10709796864",
		["lucide-chevrons-down-up"] = "rbxassetid://10709791632",
		["lucide-chevrons-left"] = "rbxassetid://10709797151",
		["lucide-chevrons-left-right"] = "rbxassetid://10709797006",
		["lucide-chevrons-right"] = "rbxassetid://10709797382",
		["lucide-chevrons-right-left"] = "rbxassetid://10709797274",
		["lucide-chevrons-up"] = "rbxassetid://10709797622",
		["lucide-chevrons-up-down"] = "rbxassetid://10709797508",
		["lucide-chrome"] = "rbxassetid://10709797725",
		["lucide-circle"] = "rbxassetid://10709798174",
		["lucide-circle-dot"] = "rbxassetid://10709797837",
		["lucide-circle-ellipsis"] = "rbxassetid://10709797985",
		["lucide-circle-slashed"] = "rbxassetid://10709798100",
		["lucide-citrus"] = "rbxassetid://10709798276",
		["lucide-clapperboard"] = "rbxassetid://10709798350",
		["lucide-clipboard"] = "rbxassetid://10709799288",
		["lucide-clipboard-check"] = "rbxassetid://10709798443",
		["lucide-clipboard-copy"] = "rbxassetid://10709798574",
		["lucide-clipboard-edit"] = "rbxassetid://10709798682",
		["lucide-clipboard-list"] = "rbxassetid://10709798792",
		["lucide-clipboard-signature"] = "rbxassetid://10709798890",
		["lucide-clipboard-type"] = "rbxassetid://10709798999",
		["lucide-clipboard-x"] = "rbxassetid://10709799124",
		["lucide-clock"] = "rbxassetid://10709805144",
		["lucide-clock-1"] = "rbxassetid://10709799535",
		["lucide-clock-10"] = "rbxassetid://10709799718",
		["lucide-clock-11"] = "rbxassetid://10709799818",
		["lucide-clock-12"] = "rbxassetid://10709799962",
		["lucide-clock-2"] = "rbxassetid://10709803876",
		["lucide-clock-3"] = "rbxassetid://10709803989",
		["lucide-clock-4"] = "rbxassetid://10709804164",
		["lucide-clock-5"] = "rbxassetid://10709804291",
		["lucide-clock-6"] = "rbxassetid://10709804435",
		["lucide-clock-7"] = "rbxassetid://10709804599",
		["lucide-clock-8"] = "rbxassetid://10709804784",
		["lucide-clock-9"] = "rbxassetid://10709804996",
		["lucide-cloud"] = "rbxassetid://10709806740",
		["lucide-cloud-cog"] = "rbxassetid://10709805262",
		["lucide-cloud-drizzle"] = "rbxassetid://10709805371",
		["lucide-cloud-fog"] = "rbxassetid://10709805477",
		["lucide-cloud-hail"] = "rbxassetid://10709805596",
		["lucide-cloud-lightning"] = "rbxassetid://10709805727",
		["lucide-cloud-moon"] = "rbxassetid://10709805942",
		["lucide-cloud-moon-rain"] = "rbxassetid://10709805838",
		["lucide-cloud-off"] = "rbxassetid://10709806060",
		["lucide-cloud-rain"] = "rbxassetid://10709806277",
		["lucide-cloud-rain-wind"] = "rbxassetid://10709806166",
		["lucide-cloud-snow"] = "rbxassetid://10709806374",
		["lucide-cloud-sun"] = "rbxassetid://10709806631",
		["lucide-cloud-sun-rain"] = "rbxassetid://10709806475",
		["lucide-cloudy"] = "rbxassetid://10709806859",
		["lucide-clover"] = "rbxassetid://10709806995",
		["lucide-code"] = "rbxassetid://10709810463",
		["lucide-code-2"] = "rbxassetid://10709807111",
		["lucide-codepen"] = "rbxassetid://10709810534",
		["lucide-codesandbox"] = "rbxassetid://10709810676",
		["lucide-coffee"] = "rbxassetid://10709810814",
		["lucide-cog"] = "rbxassetid://10709810948",
		["lucide-coins"] = "rbxassetid://10709811110",
		["lucide-columns"] = "rbxassetid://10709811261",
		["lucide-command"] = "rbxassetid://10709811365",
		["lucide-compass"] = "rbxassetid://10709811445",
		["lucide-component"] = "rbxassetid://10709811595",
		["lucide-concierge-bell"] = "rbxassetid://10709811706",
		["lucide-connection"] = "rbxassetid://10747361219",
		["lucide-contact"] = "rbxassetid://10709811834",
		["lucide-contrast"] = "rbxassetid://10709811939",
		["lucide-cookie"] = "rbxassetid://10709812067",
		["lucide-copy"] = "rbxassetid://10709812159",
		["lucide-copyleft"] = "rbxassetid://10709812251",
		["lucide-copyright"] = "rbxassetid://10709812311",
		["lucide-corner-down-left"] = "rbxassetid://10709812396",
		["lucide-corner-down-right"] = "rbxassetid://10709812485",
		["lucide-corner-left-down"] = "rbxassetid://10709812632",
		["lucide-corner-left-up"] = "rbxassetid://10709812784",
		["lucide-corner-right-down"] = "rbxassetid://10709812939",
		["lucide-corner-right-up"] = "rbxassetid://10709813094",
		["lucide-corner-up-left"] = "rbxassetid://10709813185",
		["lucide-corner-up-right"] = "rbxassetid://10709813281",
		["lucide-cpu"] = "rbxassetid://10709813383",
		["lucide-croissant"] = "rbxassetid://10709818125",
		["lucide-crop"] = "rbxassetid://10709818245",
		["lucide-cross"] = "rbxassetid://10709818399",
		["lucide-crosshair"] = "rbxassetid://10709818534",
		["lucide-crown"] = "rbxassetid://10709818626",
		["lucide-cup-soda"] = "rbxassetid://10709818763",
		["lucide-curly-braces"] = "rbxassetid://10709818847",
		["lucide-currency"] = "rbxassetid://10709818931",
		["lucide-database"] = "rbxassetid://10709818996",
		["lucide-delete"] = "rbxassetid://10709819059",
		["lucide-diamond"] = "rbxassetid://10709819149",
		["lucide-dice-1"] = "rbxassetid://10709819266",
		["lucide-dice-2"] = "rbxassetid://10709819361",
		["lucide-dice-3"] = "rbxassetid://10709819508",
		["lucide-dice-4"] = "rbxassetid://10709819670",
		["lucide-dice-5"] = "rbxassetid://10709819801",
		["lucide-dice-6"] = "rbxassetid://10709819896",
		["lucide-dices"] = "rbxassetid://10723343321",
		["lucide-diff"] = "rbxassetid://10723343416",
		["lucide-disc"] = "rbxassetid://10723343537",
		["lucide-divide"] = "rbxassetid://10723343805",
		["lucide-divide-circle"] = "rbxassetid://10723343636",
		["lucide-divide-square"] = "rbxassetid://10723343737",
		["lucide-dollar-sign"] = "rbxassetid://10723343958",
		["lucide-download"] = "rbxassetid://10723344270",
		["lucide-download-cloud"] = "rbxassetid://10723344088",
		["lucide-droplet"] = "rbxassetid://10723344432",
		["lucide-droplets"] = "rbxassetid://10734883356",
		["lucide-drumstick"] = "rbxassetid://10723344737",
		["lucide-edit"] = "rbxassetid://10734883598",
		["lucide-edit-2"] = "rbxassetid://10723344885",
		["lucide-edit-3"] = "rbxassetid://10723345088",
		["lucide-egg"] = "rbxassetid://10723345518",
		["lucide-egg-fried"] = "rbxassetid://10723345347",
		["lucide-electricity"] = "rbxassetid://10723345749",
		["lucide-electricity-off"] = "rbxassetid://10723345643",
		["lucide-equal"] = "rbxassetid://10723345990",
		["lucide-equal-not"] = "rbxassetid://10723345866",
		["lucide-eraser"] = "rbxassetid://10723346158",
		["lucide-euro"] = "rbxassetid://10723346372",
		["lucide-expand"] = "rbxassetid://10723346553",
		["lucide-external-link"] = "rbxassetid://10723346684",
		["lucide-eye"] = "rbxassetid://10723346959",
		["lucide-eye-off"] = "rbxassetid://10723346871",
		["lucide-factory"] = "rbxassetid://10723347051",
		["lucide-fan"] = "rbxassetid://10723354359",
		["lucide-fast-forward"] = "rbxassetid://10723354521",
		["lucide-feather"] = "rbxassetid://10723354671",
		["lucide-figma"] = "rbxassetid://10723354801",
		["lucide-file"] = "rbxassetid://10723374641",
		["lucide-file-archive"] = "rbxassetid://10723354921",
		["lucide-file-audio"] = "rbxassetid://10723355148",
		["lucide-file-audio-2"] = "rbxassetid://10723355026",
		["lucide-file-axis-3d"] = "rbxassetid://10723355272",
		["lucide-file-badge"] = "rbxassetid://10723355622",
		["lucide-file-badge-2"] = "rbxassetid://10723355451",
		["lucide-file-bar-chart"] = "rbxassetid://10723355887",
		["lucide-file-bar-chart-2"] = "rbxassetid://10723355746",
		["lucide-file-box"] = "rbxassetid://10723355989",
		["lucide-file-check"] = "rbxassetid://10723356210",
		["lucide-file-check-2"] = "rbxassetid://10723356100",
		["lucide-file-clock"] = "rbxassetid://10723356329",
		["lucide-file-code"] = "rbxassetid://10723356507",
		["lucide-file-cog"] = "rbxassetid://10723356830",
		["lucide-file-cog-2"] = "rbxassetid://10723356676",
		["lucide-file-diff"] = "rbxassetid://10723357039",
		["lucide-file-digit"] = "rbxassetid://10723357151",
		["lucide-file-down"] = "rbxassetid://10723357322",
		["lucide-file-edit"] = "rbxassetid://10723357495",
		["lucide-file-heart"] = "rbxassetid://10723357637",
		["lucide-file-image"] = "rbxassetid://10723357790",
		["lucide-file-input"] = "rbxassetid://10723357933",
		["lucide-file-json"] = "rbxassetid://10723364435",
		["lucide-file-json-2"] = "rbxassetid://10723364361",
		["lucide-file-key"] = "rbxassetid://10723364605",
		["lucide-file-key-2"] = "rbxassetid://10723364515",
		["lucide-file-line-chart"] = "rbxassetid://10723364725",
		["lucide-file-lock"] = "rbxassetid://10723364957",
		["lucide-file-lock-2"] = "rbxassetid://10723364861",
		["lucide-file-minus"] = "rbxassetid://10723365254",
		["lucide-file-minus-2"] = "rbxassetid://10723365086",
		["lucide-file-output"] = "rbxassetid://10723365457",
		["lucide-file-pie-chart"] = "rbxassetid://10723365598",
		["lucide-file-plus"] = "rbxassetid://10723365877",
		["lucide-file-plus-2"] = "rbxassetid://10723365766",
		["lucide-file-question"] = "rbxassetid://10723365987",
		["lucide-file-scan"] = "rbxassetid://10723366167",
		["lucide-file-search"] = "rbxassetid://10723366550",
		["lucide-file-search-2"] = "rbxassetid://10723366340",
		["lucide-file-signature"] = "rbxassetid://10723366741",
		["lucide-file-spreadsheet"] = "rbxassetid://10723366962",
		["lucide-file-symlink"] = "rbxassetid://10723367098",
		["lucide-file-terminal"] = "rbxassetid://10723367244",
		["lucide-file-text"] = "rbxassetid://10723367380",
		["lucide-file-type"] = "rbxassetid://10723367606",
		["lucide-file-type-2"] = "rbxassetid://10723367509",
		["lucide-file-up"] = "rbxassetid://10723367734",
		["lucide-file-video"] = "rbxassetid://10723373884",
		["lucide-file-video-2"] = "rbxassetid://10723367834",
		["lucide-file-volume"] = "rbxassetid://10723374172",
		["lucide-file-volume-2"] = "rbxassetid://10723374030",
		["lucide-file-warning"] = "rbxassetid://10723374276",
		["lucide-file-x"] = "rbxassetid://10723374544",
		["lucide-file-x-2"] = "rbxassetid://10723374378",
		["lucide-files"] = "rbxassetid://10723374759",
		["lucide-film"] = "rbxassetid://10723374981",
		["lucide-filter"] = "rbxassetid://10723375128",
		["lucide-fingerprint"] = "rbxassetid://10723375250",
		["lucide-flag"] = "rbxassetid://10723375890",
		["lucide-flag-off"] = "rbxassetid://10723375443",
		["lucide-flag-triangle-left"] = "rbxassetid://10723375608",
		["lucide-flag-triangle-right"] = "rbxassetid://10723375727",
		["lucide-flame"] = "rbxassetid://10723376114",
		["lucide-flashlight"] = "rbxassetid://10723376471",
		["lucide-flashlight-off"] = "rbxassetid://10723376365",
		["lucide-flask-conical"] = "rbxassetid://10734883986",
		["lucide-flask-round"] = "rbxassetid://10723376614",
		["lucide-flip-horizontal"] = "rbxassetid://10723376884",
		["lucide-flip-horizontal-2"] = "rbxassetid://10723376745",
		["lucide-flip-vertical"] = "rbxassetid://10723377138",
		["lucide-flip-vertical-2"] = "rbxassetid://10723377026",
		["lucide-flower"] = "rbxassetid://10747830374",
		["lucide-flower-2"] = "rbxassetid://10723377305",
		["lucide-focus"] = "rbxassetid://10723377537",
		["lucide-folder"] = "rbxassetid://10723387563",
		["lucide-folder-archive"] = "rbxassetid://10723384478",
		["lucide-folder-check"] = "rbxassetid://10723384605",
		["lucide-folder-clock"] = "rbxassetid://10723384731",
		["lucide-folder-closed"] = "rbxassetid://10723384893",
		["lucide-folder-cog"] = "rbxassetid://10723385213",
		["lucide-folder-cog-2"] = "rbxassetid://10723385036",
		["lucide-folder-down"] = "rbxassetid://10723385338",
		["lucide-folder-edit"] = "rbxassetid://10723385445",
		["lucide-folder-heart"] = "rbxassetid://10723385545",
		["lucide-folder-input"] = "rbxassetid://10723385721",
		["lucide-folder-key"] = "rbxassetid://10723385848",
		["lucide-folder-lock"] = "rbxassetid://10723386005",
		["lucide-folder-minus"] = "rbxassetid://10723386127",
		["lucide-folder-open"] = "rbxassetid://10723386277",
		["lucide-folder-output"] = "rbxassetid://10723386386",
		["lucide-folder-plus"] = "rbxassetid://10723386531",
		["lucide-folder-search"] = "rbxassetid://10723386787",
		["lucide-folder-search-2"] = "rbxassetid://10723386674",
		["lucide-folder-symlink"] = "rbxassetid://10723386930",
		["lucide-folder-tree"] = "rbxassetid://10723387085",
		["lucide-folder-up"] = "rbxassetid://10723387265",
		["lucide-folder-x"] = "rbxassetid://10723387448",
		["lucide-folders"] = "rbxassetid://10723387721",
		["lucide-form-input"] = "rbxassetid://10723387841",
		["lucide-forward"] = "rbxassetid://10723388016",
		["lucide-frame"] = "rbxassetid://10723394389",
		["lucide-framer"] = "rbxassetid://10723394565",
		["lucide-frown"] = "rbxassetid://10723394681",
		["lucide-fuel"] = "rbxassetid://10723394846",
		["lucide-function-square"] = "rbxassetid://10723395041",
		["lucide-gamepad"] = "rbxassetid://10723395457",
		["lucide-gamepad-2"] = "rbxassetid://10723395215",
		["lucide-gauge"] = "rbxassetid://10723395708",
		["lucide-gavel"] = "rbxassetid://10723395896",
		["lucide-gem"] = "rbxassetid://10723396000",
		["lucide-ghost"] = "rbxassetid://10723396107",
		["lucide-gift"] = "rbxassetid://10723396402",
		["lucide-gift-card"] = "rbxassetid://10723396225",
		["lucide-git-branch"] = "rbxassetid://10723396676",
		["lucide-git-branch-plus"] = "rbxassetid://10723396542",
		["lucide-git-commit"] = "rbxassetid://10723396812",
		["lucide-git-compare"] = "rbxassetid://10723396954",
		["lucide-git-fork"] = "rbxassetid://10723397049",
		["lucide-git-merge"] = "rbxassetid://10723397165",
		["lucide-git-pull-request"] = "rbxassetid://10723397431",
		["lucide-git-pull-request-closed"] = "rbxassetid://10723397268",
		["lucide-git-pull-request-draft"] = "rbxassetid://10734884302",
		["lucide-glass"] = "rbxassetid://10723397788",
		["lucide-glass-2"] = "rbxassetid://10723397529",
		["lucide-glass-water"] = "rbxassetid://10723397678",
		["lucide-glasses"] = "rbxassetid://10723397895",
		["lucide-globe"] = "rbxassetid://10723404337",
		["lucide-globe-2"] = "rbxassetid://10723398002",
		["lucide-grab"] = "rbxassetid://10723404472",
		["lucide-graduation-cap"] = "rbxassetid://10723404691",
		["lucide-grape"] = "rbxassetid://10723404822",
		["lucide-grid"] = "rbxassetid://10723404936",
		["lucide-grip-horizontal"] = "rbxassetid://10723405089",
		["lucide-grip-vertical"] = "rbxassetid://10723405236",
		["lucide-hammer"] = "rbxassetid://10723405360",
		["lucide-hand"] = "rbxassetid://10723405649",
		["lucide-hand-metal"] = "rbxassetid://10723405508",
		["lucide-hard-drive"] = "rbxassetid://10723405749",
		["lucide-hard-hat"] = "rbxassetid://10723405859",
		["lucide-hash"] = "rbxassetid://10723405975",
		["lucide-haze"] = "rbxassetid://10723406078",
		["lucide-headphones"] = "rbxassetid://10723406165",
		["lucide-heart"] = "rbxassetid://10723406885",
		["lucide-heart-crack"] = "rbxassetid://10723406299",
		["lucide-heart-handshake"] = "rbxassetid://10723406480",
		["lucide-heart-off"] = "rbxassetid://10723406662",
		["lucide-heart-pulse"] = "rbxassetid://10723406795",
		["lucide-help-circle"] = "rbxassetid://10723406988",
		["lucide-hexagon"] = "rbxassetid://10723407092",
		["lucide-highlighter"] = "rbxassetid://10723407192",
		["lucide-history"] = "rbxassetid://10723407335",
		["lucide-home"] = "rbxassetid://10723407389",
		["lucide-hourglass"] = "rbxassetid://10723407498",
		["lucide-ice-cream"] = "rbxassetid://10723414308",
		["lucide-image"] = "rbxassetid://10723415040",
		["lucide-image-minus"] = "rbxassetid://10723414487",
		["lucide-image-off"] = "rbxassetid://10723414677",
		["lucide-image-plus"] = "rbxassetid://10723414827",
		["lucide-import"] = "rbxassetid://10723415205",
		["lucide-inbox"] = "rbxassetid://10723415335",
		["lucide-indent"] = "rbxassetid://10723415494",
		["lucide-indian-rupee"] = "rbxassetid://10723415642",
		["lucide-infinity"] = "rbxassetid://10723415766",
		["lucide-info"] = "rbxassetid://10723415903",
		["lucide-inspect"] = "rbxassetid://10723416057",
		["lucide-italic"] = "rbxassetid://10723416195",
		["lucide-japanese-yen"] = "rbxassetid://10723416363",
		["lucide-joystick"] = "rbxassetid://10723416527",
		["lucide-key"] = "rbxassetid://10723416652",
		["lucide-keyboard"] = "rbxassetid://10723416765",
		["lucide-lamp"] = "rbxassetid://10723417513",
		["lucide-lamp-ceiling"] = "rbxassetid://10723416922",
		["lucide-lamp-desk"] = "rbxassetid://10723417016",
		["lucide-lamp-floor"] = "rbxassetid://10723417131",
		["lucide-lamp-wall-down"] = "rbxassetid://10723417240",
		["lucide-lamp-wall-up"] = "rbxassetid://10723417356",
		["lucide-landmark"] = "rbxassetid://10723417608",
		["lucide-languages"] = "rbxassetid://10723417703",
		["lucide-laptop"] = "rbxassetid://10723423881",
		["lucide-laptop-2"] = "rbxassetid://10723417797",
		["lucide-lasso"] = "rbxassetid://10723424235",
		["lucide-lasso-select"] = "rbxassetid://10723424058",
		["lucide-laugh"] = "rbxassetid://10723424372",
		["lucide-layers"] = "rbxassetid://10723424505",
		["lucide-layout"] = "rbxassetid://10723425376",
		["lucide-layout-dashboard"] = "rbxassetid://10723424646",
		["lucide-layout-grid"] = "rbxassetid://10723424838",
		["lucide-layout-list"] = "rbxassetid://10723424963",
		["lucide-layout-template"] = "rbxassetid://10723425187",
		["lucide-leaf"] = "rbxassetid://10723425539",
		["lucide-library"] = "rbxassetid://10723425615",
		["lucide-life-buoy"] = "rbxassetid://10723425685",
		["lucide-lightbulb"] = "rbxassetid://10723425852",
		["lucide-lightbulb-off"] = "rbxassetid://10723425762",
		["lucide-line-chart"] = "rbxassetid://10723426393",
		["lucide-link"] = "rbxassetid://10723426722",
		["lucide-link-2"] = "rbxassetid://10723426595",
		["lucide-link-2-off"] = "rbxassetid://10723426513",
		["lucide-list"] = "rbxassetid://10723433811",
		["lucide-list-checks"] = "rbxassetid://10734884548",
		["lucide-list-end"] = "rbxassetid://10723426886",
		["lucide-list-minus"] = "rbxassetid://10723426986",
		["lucide-list-music"] = "rbxassetid://10723427081",
		["lucide-list-ordered"] = "rbxassetid://10723427199",
		["lucide-list-plus"] = "rbxassetid://10723427334",
		["lucide-list-start"] = "rbxassetid://10723427494",
		["lucide-list-video"] = "rbxassetid://10723427619",
		["lucide-list-x"] = "rbxassetid://10723433655",
		["lucide-loader"] = "rbxassetid://10723434070",
		["lucide-loader-2"] = "rbxassetid://10723433935",
		["lucide-locate"] = "rbxassetid://10723434557",
		["lucide-locate-fixed"] = "rbxassetid://10723434236",
		["lucide-locate-off"] = "rbxassetid://10723434379",
		["lucide-lock"] = "rbxassetid://10723434711",
		["lucide-log-in"] = "rbxassetid://10723434830",
		["lucide-log-out"] = "rbxassetid://10723434906",
		["lucide-luggage"] = "rbxassetid://10723434993",
		["lucide-magnet"] = "rbxassetid://10723435069",
		["lucide-mail"] = "rbxassetid://10734885430",
		["lucide-mail-check"] = "rbxassetid://10723435182",
		["lucide-mail-minus"] = "rbxassetid://10723435261",
		["lucide-mail-open"] = "rbxassetid://10723435342",
		["lucide-mail-plus"] = "rbxassetid://10723435443",
		["lucide-mail-question"] = "rbxassetid://10723435515",
		["lucide-mail-search"] = "rbxassetid://10734884739",
		["lucide-mail-warning"] = "rbxassetid://10734885015",
		["lucide-mail-x"] = "rbxassetid://10734885247",
		["lucide-mails"] = "rbxassetid://10734885614",
		["lucide-map"] = "rbxassetid://10734886202",
		["lucide-map-pin"] = "rbxassetid://10734886004",
		["lucide-map-pin-off"] = "rbxassetid://10734885803",
		["lucide-maximize"] = "rbxassetid://10734886735",
		["lucide-maximize-2"] = "rbxassetid://10734886496",
		["lucide-medal"] = "rbxassetid://10734887072",
		["lucide-megaphone"] = "rbxassetid://10734887454",
		["lucide-megaphone-off"] = "rbxassetid://10734887311",
		["lucide-meh"] = "rbxassetid://10734887603",
		["lucide-menu"] = "rbxassetid://10734887784",
		["lucide-message-circle"] = "rbxassetid://10734888000",
		["lucide-message-square"] = "rbxassetid://10734888228",
		["lucide-mic"] = "rbxassetid://10734888864",
		["lucide-mic-2"] = "rbxassetid://10734888430",
		["lucide-mic-off"] = "rbxassetid://10734888646",
		["lucide-microscope"] = "rbxassetid://10734889106",
		["lucide-microwave"] = "rbxassetid://10734895076",
		["lucide-milestone"] = "rbxassetid://10734895310",
		["lucide-minimize"] = "rbxassetid://10734895698",
		["lucide-minimize-2"] = "rbxassetid://10734895530",
		["lucide-minus"] = "rbxassetid://10734896206",
		["lucide-minus-circle"] = "rbxassetid://10734895856",
		["lucide-minus-square"] = "rbxassetid://10734896029",
		["lucide-monitor"] = "rbxassetid://10734896881",
		["lucide-monitor-off"] = "rbxassetid://10734896360",
		["lucide-monitor-speaker"] = "rbxassetid://10734896512",
		["lucide-moon"] = "rbxassetid://10734897102",
		["lucide-more-horizontal"] = "rbxassetid://10734897250",
		["lucide-more-vertical"] = "rbxassetid://10734897387",
		["lucide-mountain"] = "rbxassetid://10734897956",
		["lucide-mountain-snow"] = "rbxassetid://10734897665",
		["lucide-mouse"] = "rbxassetid://10734898592",
		["lucide-mouse-pointer"] = "rbxassetid://10734898476",
		["lucide-mouse-pointer-2"] = "rbxassetid://10734898194",
		["lucide-mouse-pointer-click"] = "rbxassetid://10734898355",
		["lucide-move"] = "rbxassetid://10734900011",
		["lucide-move-3d"] = "rbxassetid://10734898756",
		["lucide-move-diagonal"] = "rbxassetid://10734899164",
		["lucide-move-diagonal-2"] = "rbxassetid://10734898934",
		["lucide-move-horizontal"] = "rbxassetid://10734899414",
		["lucide-move-vertical"] = "rbxassetid://10734899821",
		["lucide-music"] = "rbxassetid://10734905958",
		["lucide-music-2"] = "rbxassetid://10734900215",
		["lucide-music-3"] = "rbxassetid://10734905665",
		["lucide-music-4"] = "rbxassetid://10734905823",
		["lucide-navigation"] = "rbxassetid://10734906744",
		["lucide-navigation-2"] = "rbxassetid://10734906332",
		["lucide-navigation-2-off"] = "rbxassetid://10734906144",
		["lucide-navigation-off"] = "rbxassetid://10734906580",
		["lucide-network"] = "rbxassetid://10734906975",
		["lucide-newspaper"] = "rbxassetid://10734907168",
		["lucide-octagon"] = "rbxassetid://10734907361",
		["lucide-option"] = "rbxassetid://10734907649",
		["lucide-outdent"] = "rbxassetid://10734907933",
		["lucide-package"] = "rbxassetid://10734909540",
		["lucide-package-2"] = "rbxassetid://10734908151",
		["lucide-package-check"] = "rbxassetid://10734908384",
		["lucide-package-minus"] = "rbxassetid://10734908626",
		["lucide-package-open"] = "rbxassetid://10734908793",
		["lucide-package-plus"] = "rbxassetid://10734909016",
		["lucide-package-search"] = "rbxassetid://10734909196",
		["lucide-package-x"] = "rbxassetid://10734909375",
		["lucide-paint-bucket"] = "rbxassetid://10734909847",
		["lucide-paintbrush"] = "rbxassetid://10734910187",
		["lucide-paintbrush-2"] = "rbxassetid://10734910030",
		["lucide-palette"] = "rbxassetid://10734910430",
		["lucide-palmtree"] = "rbxassetid://10734910680",
		["lucide-paperclip"] = "rbxassetid://10734910927",
		["lucide-party-popper"] = "rbxassetid://10734918735",
		["lucide-pause"] = "rbxassetid://10734919336",
		["lucide-pause-circle"] = "rbxassetid://10735024209",
		["lucide-pause-octagon"] = "rbxassetid://10734919143",
		["lucide-pen-tool"] = "rbxassetid://10734919503",
		["lucide-pencil"] = "rbxassetid://10734919691",
		["lucide-percent"] = "rbxassetid://10734919919",
		["lucide-person-standing"] = "rbxassetid://10734920149",
		["lucide-phone"] = "rbxassetid://10734921524",
		["lucide-phone-call"] = "rbxassetid://10734920305",
		["lucide-phone-forwarded"] = "rbxassetid://10734920508",
		["lucide-phone-incoming"] = "rbxassetid://10734920694",
		["lucide-phone-missed"] = "rbxassetid://10734920845",
		["lucide-phone-off"] = "rbxassetid://10734921077",
		["lucide-phone-outgoing"] = "rbxassetid://10734921288",
		["lucide-pie-chart"] = "rbxassetid://10734921727",
		["lucide-piggy-bank"] = "rbxassetid://10734921935",
		["lucide-pin"] = "rbxassetid://10734922324",
		["lucide-pin-off"] = "rbxassetid://10734922180",
		["lucide-pipette"] = "rbxassetid://10734922497",
		["lucide-pizza"] = "rbxassetid://10734922774",
		["lucide-plane"] = "rbxassetid://10734922971",
		["lucide-play"] = "rbxassetid://10734923549",
		["lucide-play-circle"] = "rbxassetid://10734923214",
		["lucide-plus"] = "rbxassetid://10734924532",
		["lucide-plus-circle"] = "rbxassetid://10734923868",
		["lucide-plus-square"] = "rbxassetid://10734924219",
		["lucide-podcast"] = "rbxassetid://10734929553",
		["lucide-pointer"] = "rbxassetid://10734929723",
		["lucide-pound-sterling"] = "rbxassetid://10734929981",
		["lucide-power"] = "rbxassetid://10734930466",
		["lucide-power-off"] = "rbxassetid://10734930257",
		["lucide-printer"] = "rbxassetid://10734930632",
		["lucide-puzzle"] = "rbxassetid://10734930886",
		["lucide-quote"] = "rbxassetid://10734931234",
		["lucide-radio"] = "rbxassetid://10734931596",
		["lucide-radio-receiver"] = "rbxassetid://10734931402",
		["lucide-rectangle-horizontal"] = "rbxassetid://10734931777",
		["lucide-rectangle-vertical"] = "rbxassetid://10734932081",
		["lucide-recycle"] = "rbxassetid://10734932295",
		["lucide-redo"] = "rbxassetid://10734932822",
		["lucide-redo-2"] = "rbxassetid://10734932586",
		["lucide-refresh-ccw"] = "rbxassetid://10734933056",
		["lucide-refresh-cw"] = "rbxassetid://10734933222",
		["lucide-refrigerator"] = "rbxassetid://10734933465",
		["lucide-regex"] = "rbxassetid://10734933655",
		["lucide-repeat"] = "rbxassetid://10734933966",
		["lucide-repeat-1"] = "rbxassetid://10734933826",
		["lucide-reply"] = "rbxassetid://10734934252",
		["lucide-reply-all"] = "rbxassetid://10734934132",
		["lucide-rewind"] = "rbxassetid://10734934347",
		["lucide-rocket"] = "rbxassetid://10734934585",
		["lucide-rocking-chair"] = "rbxassetid://10734939942",
		["lucide-rotate-3d"] = "rbxassetid://10734940107",
		["lucide-rotate-ccw"] = "rbxassetid://10734940376",
		["lucide-rotate-cw"] = "rbxassetid://10734940654",
		["lucide-rss"] = "rbxassetid://10734940825",
		["lucide-ruler"] = "rbxassetid://10734941018",
		["lucide-russian-ruble"] = "rbxassetid://10734941199",
		["lucide-sailboat"] = "rbxassetid://10734941354",
		["lucide-save"] = "rbxassetid://10734941499",
		["lucide-scale"] = "rbxassetid://10734941912",
		["lucide-scale-3d"] = "rbxassetid://10734941739",
		["lucide-scaling"] = "rbxassetid://10734942072",
		["lucide-scan"] = "rbxassetid://10734942565",
		["lucide-scan-face"] = "rbxassetid://10734942198",
		["lucide-scan-line"] = "rbxassetid://10734942351",
		["lucide-scissors"] = "rbxassetid://10734942778",
		["lucide-screen-share"] = "rbxassetid://10734943193",
		["lucide-screen-share-off"] = "rbxassetid://10734942967",
		["lucide-scroll"] = "rbxassetid://10734943448",
		["lucide-search"] = "rbxassetid://10734943674",
		["lucide-send"] = "rbxassetid://10734943902",
		["lucide-separator-horizontal"] = "rbxassetid://10734944115",
		["lucide-separator-vertical"] = "rbxassetid://10734944326",
		["lucide-server"] = "rbxassetid://10734949856",
		["lucide-server-cog"] = "rbxassetid://10734944444",
		["lucide-server-crash"] = "rbxassetid://10734944554",
		["lucide-server-off"] = "rbxassetid://10734944668",
		["lucide-settings"] = "rbxassetid://10734950309",
		["lucide-settings-2"] = "rbxassetid://10734950020",
		["lucide-share"] = "rbxassetid://10734950813",
		["lucide-share-2"] = "rbxassetid://10734950553",
		["lucide-sheet"] = "rbxassetid://10734951038",
		["lucide-shield"] = "rbxassetid://10734951847",
		["lucide-shield-alert"] = "rbxassetid://10734951173",
		["lucide-shield-check"] = "rbxassetid://10734951367",
		["lucide-shield-close"] = "rbxassetid://10734951535",
		["lucide-shield-off"] = "rbxassetid://10734951684",
		["lucide-shirt"] = "rbxassetid://10734952036",
		["lucide-shopping-bag"] = "rbxassetid://10734952273",
		["lucide-shopping-cart"] = "rbxassetid://10734952479",
		["lucide-shovel"] = "rbxassetid://10734952773",
		["lucide-shower-head"] = "rbxassetid://10734952942",
		["lucide-shrink"] = "rbxassetid://10734953073",
		["lucide-shrub"] = "rbxassetid://10734953241",
		["lucide-shuffle"] = "rbxassetid://10734953451",
		["lucide-sidebar"] = "rbxassetid://10734954301",
		["lucide-sidebar-close"] = "rbxassetid://10734953715",
		["lucide-sidebar-open"] = "rbxassetid://10734954000",
		["lucide-sigma"] = "rbxassetid://10734954538",
		["lucide-signal"] = "rbxassetid://10734961133",
		["lucide-signal-high"] = "rbxassetid://10734954807",
		["lucide-signal-low"] = "rbxassetid://10734955080",
		["lucide-signal-medium"] = "rbxassetid://10734955336",
		["lucide-signal-zero"] = "rbxassetid://10734960878",
		["lucide-siren"] = "rbxassetid://10734961284",
		["lucide-skip-back"] = "rbxassetid://10734961526",
		["lucide-skip-forward"] = "rbxassetid://10734961809",
		["lucide-skull"] = "rbxassetid://10734962068",
		["lucide-slack"] = "rbxassetid://10734962339",
		["lucide-slash"] = "rbxassetid://10734962600",
		["lucide-slice"] = "rbxassetid://10734963024",
		["lucide-sliders"] = "rbxassetid://10734963400",
		["lucide-sliders-horizontal"] = "rbxassetid://10734963191",
		["lucide-smartphone"] = "rbxassetid://10734963940",
		["lucide-smartphone-charging"] = "rbxassetid://10734963671",
		["lucide-smile"] = "rbxassetid://10734964441",
		["lucide-smile-plus"] = "rbxassetid://10734964188",
		["lucide-snowflake"] = "rbxassetid://10734964600",
		["lucide-sofa"] = "rbxassetid://10734964852",
		["lucide-sort-asc"] = "rbxassetid://10734965115",
		["lucide-sort-desc"] = "rbxassetid://10734965287",
		["lucide-speaker"] = "rbxassetid://10734965419",
		["lucide-sprout"] = "rbxassetid://10734965572",
		["lucide-square"] = "rbxassetid://10734965702",
		["lucide-star"] = "rbxassetid://10734966248",
		["lucide-star-half"] = "rbxassetid://10734965897",
		["lucide-star-off"] = "rbxassetid://10734966097",
		["lucide-stethoscope"] = "rbxassetid://10734966384",
		["lucide-sticker"] = "rbxassetid://10734972234",
		["lucide-sticky-note"] = "rbxassetid://10734972463",
		["lucide-stop-circle"] = "rbxassetid://10734972621",
		["lucide-stretch-horizontal"] = "rbxassetid://10734972862",
		["lucide-stretch-vertical"] = "rbxassetid://10734973130",
		["lucide-strikethrough"] = "rbxassetid://10734973290",
		["lucide-subscript"] = "rbxassetid://10734973457",
		["lucide-sun"] = "rbxassetid://10734974297",
		["lucide-sun-dim"] = "rbxassetid://10734973645",
		["lucide-sun-medium"] = "rbxassetid://10734973778",
		["lucide-sun-moon"] = "rbxassetid://10734973999",
		["lucide-sun-snow"] = "rbxassetid://10734974130",
		["lucide-sunrise"] = "rbxassetid://10734974522",
		["lucide-sunset"] = "rbxassetid://10734974689",
		["lucide-superscript"] = "rbxassetid://10734974850",
		["lucide-swiss-franc"] = "rbxassetid://10734975024",
		["lucide-switch-camera"] = "rbxassetid://10734975214",
		["lucide-sword"] = "rbxassetid://10734975486",
		["lucide-swords"] = "rbxassetid://10734975692",
		["lucide-syringe"] = "rbxassetid://10734975932",
		["lucide-table"] = "rbxassetid://10734976230",
		["lucide-table-2"] = "rbxassetid://10734976097",
		["lucide-tablet"] = "rbxassetid://10734976394",
		["lucide-tag"] = "rbxassetid://10734976528",
		["lucide-tags"] = "rbxassetid://10734976739",
		["lucide-target"] = "rbxassetid://10734977012",
		["lucide-tent"] = "rbxassetid://10734981750",
		["lucide-terminal"] = "rbxassetid://10734982144",
		["lucide-terminal-square"] = "rbxassetid://10734981995",
		["lucide-text-cursor"] = "rbxassetid://10734982395",
		["lucide-text-cursor-input"] = "rbxassetid://10734982297",
		["lucide-thermometer"] = "rbxassetid://10734983134",
		["lucide-thermometer-snowflake"] = "rbxassetid://10734982571",
		["lucide-thermometer-sun"] = "rbxassetid://10734982771",
		["lucide-thumbs-down"] = "rbxassetid://10734983359",
		["lucide-thumbs-up"] = "rbxassetid://10734983629",
		["lucide-ticket"] = "rbxassetid://10734983868",
		["lucide-timer"] = "rbxassetid://10734984606",
		["lucide-timer-off"] = "rbxassetid://10734984138",
		["lucide-timer-reset"] = "rbxassetid://10734984355",
		["lucide-toggle-left"] = "rbxassetid://10734984834",
		["lucide-toggle-right"] = "rbxassetid://10734985040",
		["lucide-tornado"] = "rbxassetid://10734985247",
		["lucide-toy-brick"] = "rbxassetid://10747361919",
		["lucide-train"] = "rbxassetid://10747362105",
		["lucide-trash"] = "rbxassetid://10747362393",
		["lucide-trash-2"] = "rbxassetid://10747362241",
		["lucide-tree-deciduous"] = "rbxassetid://10747362534",
		["lucide-tree-pine"] = "rbxassetid://10747362748",
		["lucide-trees"] = "rbxassetid://10747363016",
		["lucide-trending-down"] = "rbxassetid://10747363205",
		["lucide-trending-up"] = "rbxassetid://10747363465",
		["lucide-triangle"] = "rbxassetid://10747363621",
		["lucide-trophy"] = "rbxassetid://10747363809",
		["lucide-truck"] = "rbxassetid://10747364031",
		["lucide-tv"] = "rbxassetid://10747364593",
		["lucide-tv-2"] = "rbxassetid://10747364302",
		["lucide-type"] = "rbxassetid://10747364761",
		["lucide-umbrella"] = "rbxassetid://10747364971",
		["lucide-underline"] = "rbxassetid://10747365191",
		["lucide-undo"] = "rbxassetid://10747365484",
		["lucide-undo-2"] = "rbxassetid://10747365359",
		["lucide-unlink"] = "rbxassetid://10747365771",
		["lucide-unlink-2"] = "rbxassetid://10747397871",
		["lucide-unlock"] = "rbxassetid://10747366027",
		["lucide-upload"] = "rbxassetid://10747366434",
		["lucide-upload-cloud"] = "rbxassetid://10747366266",
		["lucide-usb"] = "rbxassetid://10747366606",
		["lucide-user"] = "rbxassetid://10747373176",
		["lucide-user-check"] = "rbxassetid://10747371901",
		["lucide-user-cog"] = "rbxassetid://10747372167",
		["lucide-user-minus"] = "rbxassetid://10747372346",
		["lucide-user-plus"] = "rbxassetid://10747372702",
		["lucide-user-x"] = "rbxassetid://10747372992",
		["lucide-users"] = "rbxassetid://10747373426",
		["lucide-utensils"] = "rbxassetid://10747373821",
		["lucide-utensils-crossed"] = "rbxassetid://10747373629",
		["lucide-venetian-mask"] = "rbxassetid://10747374003",
		["lucide-verified"] = "rbxassetid://10747374131",
		["lucide-vibrate"] = "rbxassetid://10747374489",
		["lucide-vibrate-off"] = "rbxassetid://10747374269",
		["lucide-video"] = "rbxassetid://10747374938",
		["lucide-video-off"] = "rbxassetid://10747374721",
		["lucide-view"] = "rbxassetid://10747375132",
		["lucide-voicemail"] = "rbxassetid://10747375281",
		["lucide-volume"] = "rbxassetid://10747376008",
		["lucide-volume-1"] = "rbxassetid://10747375450",
		["lucide-volume-2"] = "rbxassetid://10747375679",
		["lucide-volume-x"] = "rbxassetid://10747375880",
		["lucide-wallet"] = "rbxassetid://10747376205",
		["lucide-wand"] = "rbxassetid://10747376565",
		["lucide-wand-2"] = "rbxassetid://10747376349",
		["lucide-watch"] = "rbxassetid://10747376722",
		["lucide-waves"] = "rbxassetid://10747376931",
		["lucide-webcam"] = "rbxassetid://10747381992",
		["lucide-wifi"] = "rbxassetid://10747382504",
		["lucide-wifi-off"] = "rbxassetid://10747382268",
		["lucide-wind"] = "rbxassetid://10747382750",
		["lucide-wrap-text"] = "rbxassetid://10747383065",
		["lucide-wrench"] = "rbxassetid://10747383470",
		["lucide-x"] = "rbxassetid://10747384394",
		["lucide-x-circle"] = "rbxassetid://10747383819",
		["lucide-x-octagon"] = "rbxassetid://10747384037",
		["lucide-x-square"] = "rbxassetid://10747384217",
		["lucide-zoom-in"] = "rbxassetid://10747384552",
		["lucide-zoom-out"] = "rbxassetid://10747384679",
}
print("past long table")

local CreateTween = function(name, speed, style, direction, loop, reverse, delay)
    name = name
    speed = speed or 0.17
    style = style or Enum.EasingStyle.Sine
    direction = direction or Enum.EasingDirection.InOut
    loop = loop or 0
    reverse = reverse or false
    delay = delay or 0

    TweenTable[name] = TweenInfo.new(speed, style, direction, loop, reverse, delay)
end

-- / Dragging
local drag = function(obj, latency)
    obj = obj
    latency = latency or 0.06

    toggled = nil
    input = nil
    start = nil

    function updateInput(input)
        local Delta = input.Position - start
        local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
        TweenService:Create(obj, TweenInfo.new(latency), {Position = Position}):Play()
    end

    obj.InputBegan:Connect(function(inp)
        if (inp.UserInputType == Enum.UserInputType.MouseButton1) then
            toggled = true
            start = inp.Position
            startPos = obj.Position
            inp.Changed:Connect(function()
                if (inp.UserInputState == Enum.UserInputState.End) then
                    toggled = false
                end
            end)
        end
    end)

    obj.InputChanged:Connect(function(inp)
        if (inp.UserInputType == Enum.UserInputType.MouseMovement) then
            input = inp
        end
    end)

    UserInputService.InputChanged:Connect(function(inp)
        if (inp == input and toggled) then
            updateInput(inp)
        end
    end)
end

local library = {
    version = "2.0.2",
    title = title or "xsx " .. tostring(math.random(1,366)),
    fps = 0,
    rank = "private"
}

coroutine.wrap(function()
    RunService.RenderStepped:Connect(function(v)
        library.fps =  math.round(1/v)
    end)
end)()

function library:RoundNumber(int, float)
    return tonumber(string.format("%." .. (int or 0) .. "f", float))
end

function library:GetUsername()
    return Player.Name
end

function library:CheckIfLoaded()
    if game:IsLoaded() then
        return true
    else
        return false
    end
end

function library:GetUserId()
    return Player.UserId
end

function library:GetPlaceId()
    return game.PlaceId
end

function library:GetJobId()
    return game.JobId
end

function library:Rejoin()
    TeleportService:TeleportToPlaceInstance(library:GetPlaceId(), library:GetJobId(), library:GetUserId())
end

function library:Copy(input) -- only works with synapse
    if syn then
        syn.write_clipboard(input)
    end
end

function library:GetDay(type)
    if type == "word" then -- day in a full word
        return os.date("%A")
    elseif type == "short" then -- day in a shortened word
        return os.date("%a")
    elseif type == "month" then -- day of the month in digits
        return os.date("%d")
    elseif type == "year" then -- day of the year in digits
        return os.date("%j")
    end
end

function library:GetTime(type)
    if type == "24h" then -- time using a 24 hour clock
        return os.date("%H")
    elseif type == "12h" then -- time using a 12 hour clock
        return os.date("%I")
    elseif type == "minute" then -- time in minutes
        return os.date("%M")
    elseif type == "half" then -- what part of the day it is (AM or PM)
        return os.date("%p")
    elseif type == "second" then -- time in seconds
        return os.date("%S")
    elseif type == "full" then -- full time
        return os.date("%X")
    elseif type == "ISO" then -- ISO / UTC ( 1min = 1, 1hour = 100)
        return os.date("%z")
    elseif type == "zone" then -- time zone
        return os.date("%Z") 
    end
end

function library:GetMonth(type)
    if type == "word" then -- full month name
        return os.date("%B")
    elseif type == "short" then -- month in shortened word
        return os.date("%b")
    elseif type == "digit" then -- the months digit
        return os.date("%m")
    end
end

function library:GetWeek(type)
    if type == "year_S" then -- the number of the week in the current year (sunday first day)
        return os.date("%U")
    elseif type == "day" then -- the week day
        return os.date("%w")
    elseif type == "year_M" then -- the number of the week in the current year (monday first day)
        return os.date("%W")
    end
end

function library:GetYear(type)
    if type == "digits" then -- the second 2 digits of the year
        return os.date("%y")
    elseif type == "full" then -- the full year
        return os.date("%Y")
    end
end

function library:UnlockFps(new) -- syn only
    if syn then
        setfpscap(new)
    end
end

function library:Watermark(text)
    for i,v in pairs(CoreGuiService:GetChildren()) do
        if v.Name == "watermark" then
            v:Destroy()
        end
    end

    tetx = text or "xsx v2"

    local watermark = Instance.new("ScreenGui")
    local watermarkPadding = Instance.new("UIPadding")
    local watermarkLayout = Instance.new("UIListLayout")
    local edge = Instance.new("Frame")
    local edgeCorner = Instance.new("UICorner")
    local background = Instance.new("Frame")
    local barFolder = Instance.new("Folder")
    local bar = Instance.new("Frame")
    local barCorner = Instance.new("UICorner")
    local barLayout = Instance.new("UIListLayout")
    local backgroundGradient = Instance.new("UIGradient")
    local backgroundCorner = Instance.new("UICorner")
    local waterText = Instance.new("TextLabel")
    local waterPadding = Instance.new("UIPadding")
    local backgroundLayout = Instance.new("UIListLayout")

    watermark.Name = "watermark"
    watermark.Parent = CoreGuiService
    watermark.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    watermarkLayout.Name = "watermarkLayout"
    watermarkLayout.Parent = watermark
    watermarkLayout.FillDirection = Enum.FillDirection.Horizontal
    watermarkLayout.SortOrder = Enum.SortOrder.LayoutOrder
    watermarkLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
    watermarkLayout.Padding = UDim.new(0, 4)
    
    watermarkPadding.Name = "watermarkPadding"
    watermarkPadding.Parent = watermark
    watermarkPadding.PaddingBottom = UDim.new(0, 6)
    watermarkPadding.PaddingLeft = UDim.new(0, 6)

    edge.Name = "edge"
    edge.Parent = watermark
    edge.AnchorPoint = Vector2.new(0.5, 0.5)
    edge.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    edge.Position = UDim2.new(0.5, 0, -0.03, 0)
    edge.Size = UDim2.new(0, 0, 0, 26)
    edge.BackgroundTransparency = 1

    edgeCorner.CornerRadius = UDim.new(0, 2)
    edgeCorner.Name = "edgeCorner"
    edgeCorner.Parent = edge

    background.Name = "background"
    background.Parent = edge
    background.AnchorPoint = Vector2.new(0.5, 0.5)
    background.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    background.BackgroundTransparency = 1
    background.ClipsDescendants = true
    background.Position = UDim2.new(0.5, 0, 0.5, 0)
    background.Size = UDim2.new(0, 0, 0, 24)

    barFolder.Name = "barFolder"
    barFolder.Parent = background

    bar.Name = "bar"
    bar.Parent = barFolder
    bar.BackgroundColor3 = Color3.fromRGB(159, 115, 255)
    bar.BackgroundTransparency = 0
    bar.Size = UDim2.new(0, 0, 0, 1)

    barCorner.CornerRadius = UDim.new(0, 2)
    barCorner.Name = "barCorner"
    barCorner.Parent = bar

    barLayout.Name = "barLayout"
    barLayout.Parent = barFolder
    barLayout.SortOrder = Enum.SortOrder.LayoutOrder

    backgroundGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(34, 34, 34)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(28, 28, 28))}
    backgroundGradient.Rotation = 90
    backgroundGradient.Name = "backgroundGradient"
    backgroundGradient.Parent = background

    backgroundCorner.CornerRadius = UDim.new(0, 2)
    backgroundCorner.Name = "backgroundCorner"
    backgroundCorner.Parent = background

    waterText.Name = "notifText"
    waterText.Parent = background
    waterText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    waterText.BackgroundTransparency = 1.000
    waterText.Position = UDim2.new(0, 0, -0.0416666679, 0)
    waterText.Size = UDim2.new(0, 0, 0, 24)
    waterText.Font = Enum.Font.Code
    waterText.Text = text
    waterText.TextColor3 = Color3.fromRGB(198, 198, 198)
    waterText.TextTransparency = 1
    waterText.TextSize = 14.000
    waterText.RichText = true

    local NewSize = TextService:GetTextSize(waterText.Text, waterText.TextSize, waterText.Font, Vector2.new(math.huge, math.huge))
    waterText.Size = UDim2.new(0, NewSize.X + 8, 0, 24)

    waterPadding.Name = "notifPadding"
    waterPadding.Parent = waterText
    waterPadding.PaddingBottom = UDim.new(0, 4)
    waterPadding.PaddingLeft = UDim.new(0, 4)
    waterPadding.PaddingRight = UDim.new(0, 4)
    waterPadding.PaddingTop = UDim.new(0, 4)

    backgroundLayout.Name = "backgroundLayout"
    backgroundLayout.Parent = background
    backgroundLayout.SortOrder = Enum.SortOrder.LayoutOrder
    backgroundLayout.VerticalAlignment = Enum.VerticalAlignment.Center

    CreateTween("wm", 0.24)
    CreateTween("wm_2", 0.04)
    coroutine.wrap(function()
        TweenService:Create(edge, TweenTable["wm"], {BackgroundTransparency = 0}):Play()
        TweenService:Create(edge, TweenTable["wm"], {Size = UDim2.new(0, NewSize.x + 10, 0, 26)}):Play()
        TweenService:Create(background, TweenTable["wm"], {BackgroundTransparency = 0}):Play()
        TweenService:Create(background, TweenTable["wm"], {Size = UDim2.new(0, NewSize.x + 8, 0, 24)}):Play()
        wait(.2)
        TweenService:Create(bar, TweenTable["wm"], {Size = UDim2.new(0, NewSize.x + 8, 0, 1)}):Play()
        wait(.1)
        TweenService:Create(waterText, TweenTable["wm"], {TextTransparency = 0}):Play()
    end)()

    local WatermarkFunctions = {}
    function WatermarkFunctions:AddWatermark(text)
        tetx = text or "xsx v2"

        local edge = Instance.new("Frame")
        local edgeCorner = Instance.new("UICorner")
        local background = Instance.new("Frame")
        local barFolder = Instance.new("Folder")
        local bar = Instance.new("Frame")
        local barCorner = Instance.new("UICorner")
        local barLayout = Instance.new("UIListLayout")
        local backgroundGradient = Instance.new("UIGradient")
        local backgroundCorner = Instance.new("UICorner")
        local waterText = Instance.new("TextLabel")
        local waterPadding = Instance.new("UIPadding")
        local backgroundLayout = Instance.new("UIListLayout")
    
        edge.Name = "edge"
        edge.Parent = watermark
        edge.AnchorPoint = Vector2.new(0.5, 0.5)
        edge.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
        edge.Position = UDim2.new(0.5, 0, -0.03, 0)
        edge.Size = UDim2.new(0, 0, 0, 26)
        edge.BackgroundTransparency = 1
    
        edgeCorner.CornerRadius = UDim.new(0, 2)
        edgeCorner.Name = "edgeCorner"
        edgeCorner.Parent = edge
    
        background.Name = "background"
        background.Parent = edge
        background.AnchorPoint = Vector2.new(0.5, 0.5)
        background.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        background.BackgroundTransparency = 1
        background.ClipsDescendants = true
        background.Position = UDim2.new(0.5, 0, 0.5, 0)
        background.Size = UDim2.new(0, 0, 0, 24)
    
        barFolder.Name = "barFolder"
        barFolder.Parent = background
    
        bar.Name = "bar"
        bar.Parent = barFolder
        bar.BackgroundColor3 = Color3.fromRGB(159, 115, 255)
        bar.BackgroundTransparency = 0
        bar.Size = UDim2.new(0, 0, 0, 1)
    
        barCorner.CornerRadius = UDim.new(0, 2)
        barCorner.Name = "barCorner"
        barCorner.Parent = bar
    
        barLayout.Name = "barLayout"
        barLayout.Parent = barFolder
        barLayout.SortOrder = Enum.SortOrder.LayoutOrder
    
        backgroundGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(34, 34, 34)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(28, 28, 28))}
        backgroundGradient.Rotation = 90
        backgroundGradient.Name = "backgroundGradient"
        backgroundGradient.Parent = background
    
        backgroundCorner.CornerRadius = UDim.new(0, 2)
        backgroundCorner.Name = "backgroundCorner"
        backgroundCorner.Parent = background
    
        waterText.Name = "notifText"
        waterText.Parent = background
        waterText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        waterText.BackgroundTransparency = 1.000
        waterText.Position = UDim2.new(0, 0, -0.0416666679, 0)
        waterText.Size = UDim2.new(0, 0, 0, 24)
        waterText.Font = Enum.Font.Code
        waterText.Text = text
        waterText.TextColor3 = Color3.fromRGB(198, 198, 198)
        waterText.TextTransparency = 1
        waterText.TextSize = 14.000
        waterText.RichText = true
    
        local NewSize = TextService:GetTextSize(waterText.Text, waterText.TextSize, waterText.Font, Vector2.new(math.huge, math.huge))
        waterText.Size = UDim2.new(0, NewSize.X + 8, 0, 24)
    
        waterPadding.Name = "notifPadding"
        waterPadding.Parent = waterText
        waterPadding.PaddingBottom = UDim.new(0, 4)
        waterPadding.PaddingLeft = UDim.new(0, 4)
        waterPadding.PaddingRight = UDim.new(0, 4)
        waterPadding.PaddingTop = UDim.new(0, 4)
    
        backgroundLayout.Name = "backgroundLayout"
        backgroundLayout.Parent = background
        backgroundLayout.SortOrder = Enum.SortOrder.LayoutOrder
        backgroundLayout.VerticalAlignment = Enum.VerticalAlignment.Center
    
        coroutine.wrap(function()
            TweenService:Create(edge, TweenTable["wm"], {BackgroundTransparency = 0}):Play()
            TweenService:Create(edge, TweenTable["wm"], {Size = UDim2.new(0, NewSize.x + 10, 0, 26)}):Play()
            TweenService:Create(background, TweenTable["wm"], {BackgroundTransparency = 0}):Play()
            TweenService:Create(background, TweenTable["wm"], {Size = UDim2.new(0, NewSize.x + 8, 0, 24)}):Play()
            wait(.2)
            TweenService:Create(bar, TweenTable["wm"], {Size = UDim2.new(0, NewSize.x + 8, 0, 1)}):Play()
            wait(.1)
            TweenService:Create(waterText, TweenTable["wm"], {TextTransparency = 0}):Play()
        end)()

        local NewWatermarkFunctions = {}
        function NewWatermarkFunctions:Hide()
            edge.Visible = false
            return NewWatermarkFunctions
        end
        --
        function NewWatermarkFunctions:Show()
            edge.Visible = true
            return NewWatermarkFunctions
        end
        --
        function NewWatermarkFunctions:Text(new)
            new = new or text
            waterText.Text = new
    
            local NewSize = TextService:GetTextSize(waterText.Text, waterText.TextSize, waterText.Font, Vector2.new(math.huge, math.huge))
            waterText.Size = UDim2.new(0, NewSize.X + 8, 0, 24)
            coroutine.wrap(function()
                TweenService:Create(edge, TweenTable["wm_2"], {Size = UDim2.new(0, NewSize.x + 10, 0, 26)}):Play()
                TweenService:Create(background, TweenTable["wm_2"], {Size = UDim2.new(0, NewSize.x + 8, 0, 24)}):Play()
                TweenService:Create(bar, TweenTable["wm_2"], {Size = UDim2.new(0, NewSize.x + 8, 0, 1)}):Play()
                TweenService:Create(waterText, TweenTable["wm_2"], {Size = UDim2.new(0, NewSize.x + 8, 0, 1)}):Play()
            end)()
    
            return NewWatermarkFunctions
        end
        --
        function NewWatermarkFunctions:Remove()
            Watermark:Destroy()
            return NewWatermarkFunctions
        end
        return NewWatermarkFunctions
    end

    function WatermarkFunctions:Hide()
        edge.Visible = false
        return WatermarkFunctions
    end
    --
    function WatermarkFunctions:Show()
        edge.Visible = true
        return WatermarkFunctions
    end
    --
    function WatermarkFunctions:Text(new)
        new = new or text
        waterText.Text = new

        local NewSize = TextService:GetTextSize(waterText.Text, waterText.TextSize, waterText.Font, Vector2.new(math.huge, math.huge))
        coroutine.wrap(function()
            TweenService:Create(edge, TweenTable["wm_2"], {Size = UDim2.new(0, NewSize.x + 10, 0, 26)}):Play()
            TweenService:Create(background, TweenTable["wm_2"], {Size = UDim2.new(0, NewSize.x + 8, 0, 24)}):Play()
            TweenService:Create(bar, TweenTable["wm_2"], {Size = UDim2.new(0, NewSize.x + 8, 0, 1)}):Play()
            TweenService:Create(waterText, TweenTable["wm_2"], {Size = UDim2.new(0, NewSize.x + 8, 0, 1)}):Play()
        end)()

        return WatermarkFunctions
    end
    --
    function WatermarkFunctions:Remove()
        Watermark:Destroy()
        return WatermarkFunctions
    end
    return WatermarkFunctions
end

function library:InitNotifications(text, duration, callback)
    for i,v in next, CoreGuiService:GetChildren() do
        if v.name == "Notifications" then
            v:Destroy()
        end
    end

    local Notifications = Instance.new("ScreenGui")
    local notificationsLayout = Instance.new("UIListLayout")
    local notificationsPadding = Instance.new("UIPadding")

    Notifications.Name = "Notifications"
    Notifications.Parent = CoreGuiService
    Notifications.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    notificationsLayout.Name = "notificationsLayout"
    notificationsLayout.Parent = Notifications
    notificationsLayout.SortOrder = Enum.SortOrder.LayoutOrder
    notificationsLayout.Padding = UDim.new(0, 4)

    notificationsPadding.Name = "notificationsPadding"
    notificationsPadding.Parent = Notifications
    notificationsPadding.PaddingLeft = UDim.new(0, 6)
    notificationsPadding.PaddingTop = UDim.new(0, 18)

    local Notification = {}
    function Notification:Notify(text, duration, type, callback)
        
        CreateTween("notification_load", 0.2)

        text = text or "please wait."
        duration = duration or 5
        type = type or "notification"
        callback = callback or function() end

        local edge = Instance.new("Frame")
        local edgeCorner = Instance.new("UICorner")
        local background = Instance.new("Frame")
        local barFolder = Instance.new("Folder")
        local bar = Instance.new("Frame")
        local barCorner = Instance.new("UICorner")
        local barLayout = Instance.new("UIListLayout")
        local backgroundGradient = Instance.new("UIGradient")
        local backgroundCorner = Instance.new("UICorner")
        local notifText = Instance.new("TextLabel")
        local notifPadding = Instance.new("UIPadding")
        local backgroundLayout = Instance.new("UIListLayout")
    
        edge.Name = "edge"
        edge.Parent = Notifications
        edge.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
        edge.BackgroundTransparency = 1.000
        edge.Size = UDim2.new(0, 0, 0, 26)
    
        edgeCorner.CornerRadius = UDim.new(0, 2)
        edgeCorner.Name = "edgeCorner"
        edgeCorner.Parent = edge
    
        background.Name = "background"
        background.Parent = edge
        background.AnchorPoint = Vector2.new(0.5, 0.5)
        background.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        background.BackgroundTransparency = 1.000
        background.ClipsDescendants = true
        background.Position = UDim2.new(0.5, 0, 0.5, 0)
        background.Size = UDim2.new(0, 0, 0, 24)
    
        barFolder.Name = "barFolder"
        barFolder.Parent = background
    
        bar.Name = "bar"
        bar.Parent = barFolder
        bar.BackgroundColor3 = Color3.fromRGB(159, 115, 255)
        bar.BackgroundTransparency = 0.200
        bar.Size = UDim2.new(0, 0, 0, 1)
        if type == "notification" then
            bar.BackgroundColor3 = Color3.fromRGB(159, 115, 255)
        elseif type == "alert" then
            bar.BackgroundColor3 = Color3.fromRGB(255, 246, 112)
        elseif type == "error" then
            bar.BackgroundColor3 = Color3.fromRGB(255, 74, 77)
        elseif type == "success" then
            bar.BackgroundColor3 = Color3.fromRGB(131, 255, 103)
        elseif type == "information" then
            bar.BackgroundColor3 = Color3.fromRGB(126, 117, 255)
        end
    
        barCorner.CornerRadius = UDim.new(0, 2)
        barCorner.Name = "barCorner"
        barCorner.Parent = bar
    
        barLayout.Name = "barLayout"
        barLayout.Parent = barFolder
        barLayout.SortOrder = Enum.SortOrder.LayoutOrder
    
        backgroundGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(34, 34, 34)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(28, 28, 28))}
        backgroundGradient.Rotation = 90
        backgroundGradient.Name = "backgroundGradient"
        backgroundGradient.Parent = background
    
        backgroundCorner.CornerRadius = UDim.new(0, 2)
        backgroundCorner.Name = "backgroundCorner"
        backgroundCorner.Parent = background
    
        notifText.Name = "notifText"
        notifText.Parent = background
        notifText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        notifText.BackgroundTransparency = 1.000
        notifText.Size = UDim2.new(0, 230, 0, 26)
        notifText.Font = Enum.Font.Code
        notifText.Text = text
        notifText.TextColor3 = Color3.fromRGB(198, 198, 198)
        notifText.TextSize = 14.000
        notifText.TextTransparency = 1.000
        notifText.TextXAlignment = Enum.TextXAlignment.Left
        notifText.RichText = true
    
        notifPadding.Name = "notifPadding"
        notifPadding.Parent = notifText
        notifPadding.PaddingBottom = UDim.new(0, 4)
        notifPadding.PaddingLeft = UDim.new(0, 4)
        notifPadding.PaddingRight = UDim.new(0, 4)
        notifPadding.PaddingTop = UDim.new(0, 4)
    
        backgroundLayout.Name = "backgroundLayout"
        backgroundLayout.Parent = background
        backgroundLayout.SortOrder = Enum.SortOrder.LayoutOrder
        backgroundLayout.VerticalAlignment = Enum.VerticalAlignment.Center
    
        local NewSize = TextService:GetTextSize(notifText.Text, notifText.TextSize, notifText.Font, Vector2.new(math.huge, math.huge))
        CreateTween("notification_wait", duration, Enum.EasingStyle.Quad)
        local IsRunning = false
        coroutine.wrap(function()
            IsRunning = true
            TweenService:Create(edge, TweenTable["notification_load"], {BackgroundTransparency = 0}):Play()
            TweenService:Create(background, TweenTable["notification_load"], {BackgroundTransparency = 0}):Play()
            TweenService:Create(notifText, TweenTable["notification_load"], {TextTransparency = 0}):Play()
            TweenService:Create(edge, TweenTable["notification_load"], {Size = UDim2.new(0, NewSize.X + 10, 0, 26)}):Play()
            TweenService:Create(background, TweenTable["notification_load"], {Size = UDim2.new(0, NewSize.X + 8, 0, 24)}):Play()
            TweenService:Create(notifText, TweenTable["notification_load"], {Size = UDim2.new(0, NewSize.X + 8, 0, 24)}):Play()
            wait()
            TweenService:Create(bar, TweenTable["notification_wait"], {Size = UDim2.new(0, NewSize.X + 8, 0, 1)}):Play()
            repeat wait() until bar.Size == UDim2.new(0, NewSize.X + 8, 0, 1)
            IsRunning = false
            TweenService:Create(edge, TweenTable["notification_load"], {BackgroundTransparency = 1}):Play()
            TweenService:Create(background, TweenTable["notification_load"], {BackgroundTransparency = 1}):Play()
            TweenService:Create(notifText, TweenTable["notification_load"], {TextTransparency = 1}):Play()
            TweenService:Create(bar, TweenTable["notification_load"], {BackgroundTransparency = 1}):Play()
            TweenService:Create(edge, TweenTable["notification_load"], {Size = UDim2.new(0, 0, 0, 26)}):Play()
            TweenService:Create(background, TweenTable["notification_load"], {Size = UDim2.new(0, 0, 0, 24)}):Play()
            TweenService:Create(notifText, TweenTable["notification_load"], {Size = UDim2.new(0, 0, 0, 24)}):Play()
            TweenService:Create(bar, TweenTable["notification_load"], {Size = UDim2.new(0, 0, 0, 1)}):Play()
            wait(.2)
            edge:Destroy()
        end)()

        CreateTween("notification_reset", 0.4)
        local NotificationFunctions = {}
        function NotificationFunctions:Text(new)
            new = new or text
            notifText.Text = new

            NewSize = TextService:GetTextSize(notifText.Text, notifText.TextSize, notifText.Font, Vector2.new(math.huge, math.huge))
            local NewSize_2 = NewSize
            if IsRunning then
                TweenService:Create(edge, TweenTable["notification_load"], {Size = UDim2.new(0, NewSize.X + 10, 0, 26)}):Play()
                TweenService:Create(background, TweenTable["notification_load"], {Size = UDim2.new(0, NewSize.X + 8, 0, 24)}):Play()
                TweenService:Create(notifText, TweenTable["notification_load"], {Size = UDim2.new(0, NewSize.X + 8, 0, 24)}):Play()
                wait()
                TweenService:Create(bar, TweenTable["notification_reset"], {Size = UDim2.new(0, 0, 0, 1)}):Play()
                wait(.4)
                TweenService:Create(bar, TweenTable["notification_wait"], {Size = UDim2.new(0, NewSize.X + 8, 0, 1)}):Play()
            end

            return NotificationFunctions
        end
        return NotificationFunctions
    end
    return Notification
end

function library:Introduction()
    for _,v in next, CoreGuiService:GetChildren() do
        if v.Name == "screen" then
            v:Destroy()
        end
    end

    CreateTween("introduction",0.175)
    local introduction = Instance.new("ScreenGui")
    local edge = Instance.new("Frame")
    local edgeCorner = Instance.new("UICorner")
    local background = Instance.new("Frame")
    local backgroundGradient = Instance.new("UIGradient")
    local backgroundCorner = Instance.new("UICorner")
    local barFolder = Instance.new("Folder")
    local bar = Instance.new("Frame")
    local barCorner = Instance.new("UICorner")
    local barLayout = Instance.new("UIListLayout")
    local xsxLogo = Instance.new("ImageLabel")
    local hashLogo = Instance.new("ImageLabel")
    local xsx = Instance.new("TextLabel")
    local text = Instance.new("TextLabel")
    local pageLayout = Instance.new("UIListLayout")
    
    introduction.Name = "introduction"
    introduction.Parent = CoreGuiService
    introduction.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    edge.Name = "edge"
    edge.Parent = introduction
    edge.AnchorPoint = Vector2.new(0.5, 0.5)
    edge.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    edge.BackgroundTransparency = 1
    edge.Position = UDim2.new(0.511773348, 0, 0.5, 0)
    edge.Size = UDim2.new(0, 300, 0, 308)
    
    edgeCorner.CornerRadius = UDim.new(0, 2)
    edgeCorner.Name = "edgeCorner"
    edgeCorner.Parent = edge
    
    background.Name = "background"
    background.Parent = edge
    background.AnchorPoint = Vector2.new(0.5, 0.5)
    background.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    background.BackgroundTransparency = 1
    background.ClipsDescendants = true
    background.Position = UDim2.new(0.5, 0, 0.5, 0)
    background.Size = UDim2.new(0, 298, 0, 306)
    
    backgroundGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(34, 34, 34)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(28, 28, 28))}
    backgroundGradient.Rotation = 90
    backgroundGradient.Name = "backgroundGradient"
    backgroundGradient.Parent = background
    
    backgroundCorner.CornerRadius = UDim.new(0, 2)
    backgroundCorner.Name = "backgroundCorner"
    backgroundCorner.Parent = background
    
    barFolder.Name = "barFolder"
    barFolder.Parent = background
    
    bar.Name = "bar"
    bar.Parent = barFolder
    bar.BackgroundColor3 = Color3.fromRGB(159, 115, 255)
    bar.BackgroundTransparency = 0.200
    bar.Size = UDim2.new(0, 0, 0, 1)
    
    barCorner.CornerRadius = UDim.new(0, 2)
    barCorner.Name = "barCorner"
    barCorner.Parent = bar
    
    barLayout.Name = "barLayout"
    barLayout.Parent = barFolder
    barLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    barLayout.SortOrder = Enum.SortOrder.LayoutOrder
    
    xsxLogo.Name = "xsxLogo"
    xsxLogo.Parent = background
    xsxLogo.AnchorPoint = Vector2.new(0.5, 0.5)
    xsxLogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    xsxLogo.BackgroundTransparency = 1.000
    xsxLogo.Position = UDim2.new(0.5, 0, 0.5, 0)
    xsxLogo.Size = UDim2.new(0, 448, 0, 150)
    xsxLogo.Visible = true
    xsxLogo.Image = "http://www.roblox.com/asset/?id=9365068051"
    xsxLogo.ImageColor3 = Color3.fromRGB(159, 115, 255)
    xsxLogo.ImageTransparency = 1
    
    hashLogo.Name = "hashLogo"
    hashLogo.Parent = background
    hashLogo.AnchorPoint = Vector2.new(0.5, 0.5)
    hashLogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    hashLogo.BackgroundTransparency = 1.000
    hashLogo.Position = UDim2.new(0.5, 0, 0.5, 0)
    hashLogo.Size = UDim2.new(0, 150, 0, 150)
    hashLogo.Visible = true
    hashLogo.Image = "http://www.roblox.com/asset/?id=9365069861"
    hashLogo.ImageColor3 = Color3.fromRGB(159, 115, 255)
    hashLogo.ImageTransparency = 1
    
    xsx.Name = "xsx"
    xsx.Parent = background
    xsx.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    xsx.BackgroundTransparency = 1.000
    xsx.Size = UDim2.new(0, 80, 0, 21)
    xsx.Font = Enum.Font.Code
    xsx.Text = "powered by Lurium Services"
    xsx.TextColor3 = Color3.fromRGB(124, 124, 124)
    xsx.TextSize = 10.000
    xsx.TextTransparency = 1
    
    text.Name = "text"
    text.Parent = background
    text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    text.BackgroundTransparency = 1.000
    text.Position = UDim2.new(0.912751675, 0, 0, 0)
    text.Size = UDim2.new(0, 26, 0, 21)
    text.Font = Enum.Font.Code
    text.Text = "hash"
    text.TextColor3 = Color3.fromRGB(124, 124, 124)
    text.TextSize = 10.000
    text.TextTransparency = 1
    text.RichText = true
    
    pageLayout.Name = "pageLayout"
    pageLayout.Parent = introduction
    pageLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    pageLayout.SortOrder = Enum.SortOrder.LayoutOrder
    pageLayout.VerticalAlignment = Enum.VerticalAlignment.Center

    CreateTween("xsxRotation", 0)
    local MinusAmount = -16
    coroutine.wrap(function()
        while wait() do
            MinusAmount = MinusAmount + 0.4
            TweenService:Create(xsxLogo, TweenTable["xsxRotation"], {Rotation = xsxLogo.Rotation - MinusAmount}):Play()
        end
    end)()

    TweenService:Create(edge, TweenTable["introduction"], {BackgroundTransparency = 0}):Play()
    TweenService:Create(background, TweenTable["introduction"], {BackgroundTransparency = 0}):Play()
    wait(.2)
    TweenService:Create(bar, TweenTable["introduction"], {Size = UDim2.new(0, 298, 0, 1)}):Play()
    wait(.2)
    TweenService:Create(xsx, TweenTable["introduction"], {TextTransparency = 0}):Play()
    TweenService:Create(text, TweenTable["introduction"], {TextTransparency = 0}):Play()
    wait(.3)
    TweenService:Create(xsxLogo, TweenTable["introduction"], {ImageTransparency = 0}):Play()
    wait(2)
    TweenService:Create(xsxLogo, TweenTable["introduction"], {ImageTransparency = 1}):Play()
    wait(.2)
    TweenService:Create(hashLogo, TweenTable["introduction"], {ImageTransparency = 0}):Play()
    wait(2)
    TweenService:Create(hashLogo, TweenTable["introduction"], {ImageTransparency = 1}):Play()
    wait(.1)
    TweenService:Create(text, TweenTable["introduction"], {TextTransparency = 1}):Play()
    wait(.1)
    TweenService:Create(xsx, TweenTable["introduction"], {TextTransparency = 1}):Play()
    wait(.1)
    TweenService:Create(bar, TweenTable["introduction"], {Size = UDim2.new(0, 0, 0, 1)}):Play()
    wait(.1)
    TweenService:Create(background, TweenTable["introduction"], {BackgroundTransparency = 1}):Play()
    TweenService:Create(edge, TweenTable["introduction"], {BackgroundTransparency = 1}):Play()
    wait(.2)
    introduction:Destroy()
end
function library:GetIcon(Name)
	if Name ~= nil and assets["lucide-" .. Name] then
		return assets["lucide-" .. Name]
	end
	return nil
end
print("surppassed library get icon")
function library:Init(key)
    for _,v in next, CoreGuiService:GetChildren() do
        if v.Name == "screen" then
            v:Destroy()
        end
    end

    local title = library.title
    key = key or Enum.KeyCode.RightAlt

    local screen = Instance.new("ScreenGui")
    local edge = Instance.new("Frame")
    local edgeCorner = Instance.new("UICorner")
    local background = Instance.new("Frame")
    local backgroundCorner = Instance.new("UICorner")
    local backgroundGradient = Instance.new("UIGradient")
    local headerLabel = Instance.new("TextLabel")
    local headerPadding = Instance.new("UIPadding")
    local barFolder = Instance.new("Folder")
    local bar = Instance.new("Frame")
    local barCorner = Instance.new("UICorner")
    local barLayout = Instance.new("UIListLayout")
    local tabButtonsEdge = Instance.new("Frame")
    local tabButtonCorner = Instance.new("UICorner")
    local tabButtons = Instance.new("Frame")
    local tabButtonCorner_2 = Instance.new("UICorner")
    local tabButtonsGradient = Instance.new("UIGradient")
    local tabButtonLayout = Instance.new("UIListLayout")
    local tabButtonPadding = Instance.new("UIPadding")
    local containerEdge = Instance.new("Frame")
    local tabButtonCorner_3 = Instance.new("UICorner")
    local container = Instance.new("Frame")
    local containerCorner = Instance.new("UICorner")
    local containerGradient = Instance.new("UIGradient")

    screen.Name = "screen"
    screen.Parent = CoreGuiService
    screen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    edge.Name = "edge"
    edge.Parent = screen
    edge.AnchorPoint = Vector2.new(0.5, 0.5)
    edge.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    edge.Position = UDim2.new(0.5, 0, 0.5, 0)
    edge.Size = UDim2.new(0, 594, 0, 406)

    drag(edge, 0.04)
    local CanChangeVisibility = true
    UserInputService.InputBegan:Connect(function(input)
        if CanChangeVisibility and input.KeyCode == key then
            edge.Visible = not edge.Visible
        end
    end)

    edgeCorner.CornerRadius = UDim.new(0, 2)
    edgeCorner.Name = "edgeCorner"
    edgeCorner.Parent = edge

    background.Name = "background"
    background.Parent = edge
    background.AnchorPoint = Vector2.new(0.5, 0.5)
    background.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    background.Position = UDim2.new(0.5, 0, 0.5, 0)
    background.Size = UDim2.new(0, 592, 0, 404)
    background.ClipsDescendants = true

    backgroundCorner.CornerRadius = UDim.new(0, 2)
    backgroundCorner.Name = "backgroundCorner"
    backgroundCorner.Parent = background

    backgroundGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(34, 34, 34)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(28, 28, 28))}
    backgroundGradient.Rotation = 90
    backgroundGradient.Name = "backgroundGradient"
    backgroundGradient.Parent = background

    headerLabel.Name = "headerLabel"
    headerLabel.Parent = background
    headerLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    headerLabel.BackgroundTransparency = 1.000
    headerLabel.Size = UDim2.new(0, 592, 0, 38)
    headerLabel.Font = Enum.Font.Code
    headerLabel.Text = title
    headerLabel.TextColor3 = Color3.fromRGB(198, 198, 198)
    headerLabel.TextSize = 16.000
    headerLabel.TextXAlignment = Enum.TextXAlignment.Left
    headerLabel.RichText = true

    headerPadding.Name = "headerPadding"
    headerPadding.Parent = headerLabel
    headerPadding.PaddingBottom = UDim.new(0, 6)
    headerPadding.PaddingLeft = UDim.new(0, 12)
    headerPadding.PaddingRight = UDim.new(0, 6)
    headerPadding.PaddingTop = UDim.new(0, 6)

    barFolder.Name = "barFolder"
    barFolder.Parent = background

    bar.Name = "bar"
    bar.Parent = barFolder
    bar.BackgroundColor3 = Color3.fromRGB(159, 115, 255)
    bar.BackgroundTransparency = 0.200
    bar.Size = UDim2.new(0, 592, 0, 1)
    bar.BorderSizePixel = 0

    barCorner.CornerRadius = UDim.new(0, 2)
    barCorner.Name = "barCorner"
    barCorner.Parent = bar

    barLayout.Name = "barLayout"
    barLayout.Parent = barFolder
    barLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    barLayout.SortOrder = Enum.SortOrder.LayoutOrder

    tabButtonsEdge.Name = "tabButtonsEdge"
    tabButtonsEdge.Parent = background
    tabButtonsEdge.AnchorPoint = Vector2.new(0.5, 0.5)
    tabButtonsEdge.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    tabButtonsEdge.Position = UDim2.new(0.1435, 0, 0.536000013, 0)
    tabButtonsEdge.Size = UDim2.new(0, 152, 0, 360)

    tabButtonCorner.CornerRadius = UDim.new(0, 2)
    tabButtonCorner.Name = "tabButtonCorner"
    tabButtonCorner.Parent = tabButtonsEdge

    tabButtons.Name = "tabButtons"
    tabButtons.Parent = tabButtonsEdge
    tabButtons.AnchorPoint = Vector2.new(0.5, 0.5)
    tabButtons.BackgroundColor3 = Color3.fromRGB(235, 235, 235)
    tabButtons.ClipsDescendants = true
    tabButtons.Position = UDim2.new(0.5, 0, 0.5, 0)
    tabButtons.Size = UDim2.new(0, 150, 0, 358)

    tabButtonCorner_2.CornerRadius = UDim.new(0, 2)
    tabButtonCorner_2.Name = "tabButtonCorner"
    tabButtonCorner_2.Parent = tabButtons

    tabButtonsGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(34, 34, 34)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(28, 28, 28))}
    tabButtonsGradient.Rotation = 90
    tabButtonsGradient.Name = "tabButtonsGradient"
    tabButtonsGradient.Parent = tabButtons

    tabButtonLayout.Name = "tabButtonLayout"
    tabButtonLayout.Parent = tabButtons
    tabButtonLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    tabButtonLayout.SortOrder = Enum.SortOrder.LayoutOrder

    tabButtonPadding.Name = "tabButtonPadding"
    tabButtonPadding.Parent = tabButtons
    tabButtonPadding.PaddingBottom = UDim.new(0, 4)
    tabButtonPadding.PaddingLeft = UDim.new(0, 4)
    tabButtonPadding.PaddingRight = UDim.new(0, 4)
    tabButtonPadding.PaddingTop = UDim.new(0, 4)

    containerEdge.Name = "containerEdge"
    containerEdge.Parent = background
    containerEdge.AnchorPoint = Vector2.new(0.5, 0.5)
    containerEdge.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    containerEdge.Position = UDim2.new(0.637000024, 0, 0.536000013, 0)
    containerEdge.Size = UDim2.new(0, 414, 0, 360)

    tabButtonCorner_3.CornerRadius = UDim.new(0, 2)
    tabButtonCorner_3.Name = "tabButtonCorner"
    tabButtonCorner_3.Parent = containerEdge

    container.Name = "container"
    container.Parent = containerEdge
    container.AnchorPoint = Vector2.new(0.5, 0.5)
    container.BackgroundColor3 = Color3.fromRGB(235, 235, 235)
    container.Position = UDim2.new(0.5, 0, 0.5, 0)
    container.Size = UDim2.new(0, 412, 0, 358)

    containerCorner.CornerRadius = UDim.new(0, 2)
    containerCorner.Name = "containerCorner"
    containerCorner.Parent = container

    containerGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(34, 34, 34)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(28, 28, 28))}
    containerGradient.Rotation = 90
    containerGradient.Name = "containerGradient"
    containerGradient.Parent = container

    local TabLibrary = {
        IsFirst = true,
        CurrentTab = ""
    }
    CreateTween("tab_text_colour", 0.16)
    print("reaching new tab")
    function TabLibrary:NewTab(title, icon)
        
        title = title or "tab"

--local Icon
--if library:GetIcon(icon) then
  --  Icon = library:GetIcon(Icon)
--end
--if icon == "" or nil then
 --   Icon = nil
--end
print("ddoing tab stuff")
        local tabButton = Instance.new("TextButton")
        local page = Instance.new("ScrollingFrame")
        local pageLayout = Instance.new("UIListLayout")
        local pagePadding = Instance.new("UIPadding")
        local imageLabel = Instance.new("ImageLabel", tabButton)
        imageLabel.BackgroundTransparency = 1
        imageLabel.AnchorPoint = Vector2.new(0, 0.5)
        imageLabel.Size = UDim2.fromOffset(16, 16)
     imageLabel.Position = UDim2.new(0, 8, 0.5, 0)
        imageLabel.Image = Icon and Icon or nil
        tabButton.Name = "tabButton"
        tabButton.Parent = tabButtons
        tabButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        tabButton.BackgroundTransparency = 1.000
        tabButton.ClipsDescendants = true
        tabButton.Position = UDim2.new(-0.0281690136, 0, 0, 0)
        tabButton.Size = UDim2.new(0, 150, 0, 22)
        tabButton.AutoButtonColor = false
        tabButton.Font = Enum.Font.Code
        tabButton.Text = title
        tabButton.TextColor3 = Color3.fromRGB(170, 170, 170)
        tabButton.TextSize = 15.000
        tabButton.RichText = true

        page.Name = "page"
        page.Parent = container
        page.Active = true
        page.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        page.BackgroundTransparency = 1.000
        page.BorderSizePixel = 0
        page.Size = UDim2.new(0, 412, 0, 358)
        page.BottomImage = "http://www.roblox.com/asset/?id=3062506202"
        page.MidImage = "http://www.roblox.com/asset/?id=3062506202"
        page.ScrollBarThickness = 1
        page.TopImage = "http://www.roblox.com/asset/?id=3062506202"
        page.ScrollBarImageColor3 = Color3.fromRGB(159, 115, 255)
        page.Visible = false
        
        pageLayout.Name = "pageLayout"
        pageLayout.Parent = page
        pageLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
        pageLayout.SortOrder = Enum.SortOrder.LayoutOrder
        pageLayout.Padding = UDim.new(0, 4)

        pagePadding.Name = "pagePadding"
        pagePadding.Parent = page
        pagePadding.PaddingBottom = UDim.new(0, 6)
        pagePadding.PaddingLeft = UDim.new(0, 6)
        pagePadding.PaddingRight = UDim.new(0, 6)
        pagePadding.PaddingTop = UDim.new(0, 6)

        if TabLibrary.IsFirst then
            page.Visible = true
            tabButton.TextColor3 = Color3.fromRGB(159, 115, 255)
            TabLibrary.CurrentTab = title
        end
        
        tabButton.MouseButton1Click:Connect(function()
            TabLibrary.CurrentTab = title
            for i,v in pairs(container:GetChildren()) do 
                if v:IsA("ScrollingFrame") then
                    v.Visible = false
                end
            end
            page.Visible = true

            for i,v in pairs(tabButtons:GetChildren()) do
                if v:IsA("TextButton") then
                    TweenService:Create(v, TweenTable["tab_text_colour"], {TextColor3 = Color3.fromRGB(170, 170, 170)}):Play()
                end
            end
            TweenService:Create(tabButton, TweenTable["tab_text_colour"], {TextColor3 = Color3.fromRGB(159, 115, 255)}):Play()
        end)

        local function UpdatePageSize()
            local correction = pageLayout.AbsoluteContentSize
            page.CanvasSize = UDim2.new(0, correction.X+13, 0, correction.Y+13)
        end

        page.ChildAdded:Connect(UpdatePageSize)
        page.ChildRemoved:Connect(UpdatePageSize)

        TabLibrary.IsFirst = false

        CreateTween("hover", 0.16)
        local Components = {}
        print("surpassed new tab")
        function Components:NewLabel(text, alignment)
            text = text or "label"
            alignment = alignment or "left"

            local label = Instance.new("TextLabel")
            local labelPadding = Instance.new("UIPadding")

            label.Name = "label"
            label.Parent = page
            label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            label.BackgroundTransparency = 1.000
            label.Position = UDim2.new(0.00499999989, 0, 0, 0)
            label.Size = UDim2.new(0, 396, 0, 24)
            label.Font = Enum.Font.Code
            label.Text = text
            label.TextColor3 = Color3.fromRGB(190, 190, 190)
            label.TextSize = 14.000
            label.TextWrapped = true
            label.TextXAlignment = Enum.TextXAlignment.Left
            label.RichText = true

            labelPadding.Name = "pagePadding"
            labelPadding.Parent = page
            labelPadding.PaddingBottom = UDim.new(0, 6)
            labelPadding.PaddingLeft = UDim.new(0, 12)
            labelPadding.PaddingRight = UDim.new(0, 6)
            labelPadding.PaddingTop = UDim.new(0, 6)

            if alignment:lower():find("le") then
                label.TextXAlignment = Enum.TextXAlignment.Left
            elseif alignment:lower():find("cent") then
                label.TextXAlignment = Enum.TextXAlignment.Center
            elseif alignment:lower():find("ri") then
                label.TextXAlignment = Enum.TextXAlignment.Right
            end

            UpdatePageSize()

            local LabelFunctions = {}
            function LabelFunctions:Text(text)
                text = text or "new label text"
                label.Text = text
                return LabelFunctions
            end
            --
            function LabelFunctions:Remove()
                label:Destroy()
                return LabelFunctions
            end
            --
            function LabelFunctions:Hide()
                label.Visible = false
                UpdatePageSize()
                return LabelFunctions
            end
            --
            function LabelFunctions:Show()
                label.Visible = true
                UpdatePageSize()
                return LabelFunctions
            end
            --
            function LabelFunctions:Align(new)
                new = new or "le"
                if new:lower():find("le") then
                    label.TextXAlignment = Enum.TextXAlignment.Left
                elseif new:lower():find("cent") then
                    label.TextXAlignment = Enum.TextXAlignment.Center
                elseif new:lower():find("ri") then
                    label.TextXAlignment = Enum.TextXAlignment.Right
                end
            end
            return LabelFunctions
        end

        function Components:NewButton(text, callback)
            text = text or "button"
            callback = callback or function() end

            local buttonFrame = Instance.new("Frame")
            local buttonLayout = Instance.new("UIListLayout")
            local button = Instance.new("TextButton")
            local buttonCorner = Instance.new("UICorner")
            local buttonBackground = Instance.new("Frame")
            local buttonGradient = Instance.new("UIGradient")
            local buttonBackCorner = Instance.new("UICorner")
            local buttonLabel = Instance.new("TextLabel")

            buttonFrame.Name = "buttonFrame"
            buttonFrame.Parent = page
            buttonFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            buttonFrame.BackgroundTransparency = 1.000
            buttonFrame.Size = UDim2.new(0, 396, 0, 24)

            buttonLayout.Name = "buttonLayout"
            buttonLayout.Parent = buttonFrame
            buttonLayout.FillDirection = Enum.FillDirection.Horizontal
            buttonLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
            buttonLayout.SortOrder = Enum.SortOrder.LayoutOrder
            buttonLayout.VerticalAlignment = Enum.VerticalAlignment.Center
            buttonLayout.Padding = UDim.new(0, 4)

            button.Name = "button"
            button.Parent = buttonFrame
            button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
            button.Size = UDim2.new(0, 396, 0, 24)
            button.AutoButtonColor = false
            button.Font = Enum.Font.SourceSans
            button.Text = ""
            button.TextColor3 = Color3.fromRGB(0, 0, 0)
            button.TextSize = 14.000

            buttonCorner.CornerRadius = UDim.new(0, 2)
            buttonCorner.Name = "buttonCorner"
            buttonCorner.Parent = button

            buttonBackground.Name = "buttonBackground"
            buttonBackground.Parent = button
            buttonBackground.AnchorPoint = Vector2.new(0.5, 0.5)
            buttonBackground.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            buttonBackground.Position = UDim2.new(0.5, 0, 0.5, 0)
            buttonBackground.Size = UDim2.new(0, 394, 0, 22)

            buttonGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(34, 34, 34)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(28, 28, 28))}
            buttonGradient.Rotation = 90
            buttonGradient.Name = "buttonGradient"
            buttonGradient.Parent = buttonBackground

            buttonBackCorner.CornerRadius = UDim.new(0, 2)
            buttonBackCorner.Name = "buttonBackCorner"
            buttonBackCorner.Parent = buttonBackground

            buttonLabel.Name = "buttonLabel"
            buttonLabel.Parent = buttonBackground
            buttonLabel.AnchorPoint = Vector2.new(0.5, 0.5)
            buttonLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            buttonLabel.BackgroundTransparency = 1.000
            buttonLabel.ClipsDescendants = true
            buttonLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
            buttonLabel.Size = UDim2.new(0, 394, 0, 22)
            buttonLabel.Font = Enum.Font.Code
            buttonLabel.Text = text
            buttonLabel.TextColor3 = Color3.fromRGB(190, 190, 190)
            buttonLabel.TextSize = 14.000
            buttonLabel.RichText = true

            button.MouseEnter:Connect(function()
                TweenService:Create(button, TweenTable["hover"], {BackgroundColor3 = Color3.fromRGB(60, 60, 60)}):Play()
            end)
            button.MouseLeave:Connect(function()
                TweenService:Create(button, TweenTable["hover"], {BackgroundColor3 = Color3.fromRGB(50, 50, 50)}):Play()
            end)

            button.MouseButton1Down:Connect(function()
                TweenService:Create(buttonLabel, TweenTable["hover"], {TextColor3 = Color3.fromRGB(159, 115, 255)}):Play()
            end)
            button.MouseButton1Up:Connect(function()
                TweenService:Create(buttonLabel, TweenTable["hover"], {TextColor3 = Color3.fromRGB(190, 190, 190)}):Play()
            end)

            button.MouseButton1Click:Connect(function()
                callback()
            end)

            local NewSizeX = 396
            local Amnt = 0
            local function ResizeButtons()
                local Amount = buttonFrame:GetChildren()
                local Resized = 396
                Amount = #Amount - 1
                Amnt = Amount
                local AmountToSubtract = (Amount / 2)
                Resized = (396 / Amount) - AmountToSubtract
                NewSizeX = (Resized)

                for i,v in pairs(buttonFrame:GetChildren()) do
                    if v:IsA("TextButton") then
                        v.Size = UDim2.new(0, Resized, 0, 24)
                        for z,x in pairs(v:GetDescendants()) do
                            if x:IsA("TextLabel") or x:IsA("Frame") then
                                x.Size = UDim2.new(0, Resized - 2, 0, 22)
                            end
                        end
                    end
                end
            end

            buttonFrame.ChildAdded:Connect(ResizeButtons)
            buttonFrame.ChildRemoved:Connect(ResizeButtons)

            UpdatePageSize()

            --
            local ButtonFunctions = {}
            function ButtonFunctions:AddButton(text, callback_2)
                if Amnt < 4 then
                    text = text or "button"
                    callback_2 = callback_2 or function() end
    
                    local button = Instance.new("TextButton")
                    local buttonCorner = Instance.new("UICorner")
                    local buttonBackground = Instance.new("Frame")
                    local buttonGradient = Instance.new("UIGradient")
                    local buttonBackCorner = Instance.new("UICorner")
                    local buttonLabel = Instance.new("TextLabel")
        
                    button.Name = "button"
                    button.Parent = buttonFrame
                    button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
                    button.Size = UDim2.new(0, NewSizeX - Amnt, 0, 24)
                    button.AutoButtonColor = false
                    button.Font = Enum.Font.SourceSans
                    button.Text = ""
                    button.TextColor3 = Color3.fromRGB(0, 0, 0)
                    button.TextSize = 14.000
        
                    buttonCorner.CornerRadius = UDim.new(0, 2)
                    buttonCorner.Name = "buttonCorner"
                    buttonCorner.Parent = button
        
                    buttonBackground.Name = "buttonBackground"
                    buttonBackground.Parent = button
                    buttonBackground.AnchorPoint = Vector2.new(0.5, 0.5)
                    buttonBackground.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    buttonBackground.Position = UDim2.new(0.5, 0, 0.5, 0)
                    buttonBackground.Size = UDim2.new(0, (NewSizeX - 2) - Amnt, 0, 22)
        
                    buttonGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(34, 34, 34)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(28, 28, 28))}
                    buttonGradient.Rotation = 90
                    buttonGradient.Name = "buttonGradient"
                    buttonGradient.Parent = buttonBackground
        
                    buttonBackCorner.CornerRadius = UDim.new(0, 2)
                    buttonBackCorner.Name = "buttonBackCorner"
                    buttonBackCorner.Parent = buttonBackground
        
                    buttonLabel.Name = "buttonLabel"
                    buttonLabel.Parent = buttonBackground
                    buttonLabel.AnchorPoint = Vector2.new(0.5, 0.5)
                    buttonLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    buttonLabel.BackgroundTransparency = 1.000
                    buttonLabel.ClipsDescendants = true
                    buttonLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
                    buttonLabel.Size = UDim2.new(0, NewSizeX - 2, 0, 22)
                    buttonLabel.Font = Enum.Font.Code
                    buttonLabel.Text = text
                    buttonLabel.TextColor3 = Color3.fromRGB(190, 190, 190)
                    buttonLabel.TextSize = 14.000
                    buttonLabel.RichText = true

                    UpdatePageSize()
        
                    button.MouseEnter:Connect(function()
                        TweenService:Create(button, TweenTable["hover"], {BackgroundColor3 = Color3.fromRGB(60, 60, 60)}):Play()
                    end)
                    button.MouseLeave:Connect(function()
                        TweenService:Create(button, TweenTable["hover"], {BackgroundColor3 = Color3.fromRGB(50, 50, 50)}):Play()
                    end)
        
                    button.MouseButton1Down:Connect(function()
                        TweenService:Create(buttonLabel, TweenTable["hover"], {TextColor3 = Color3.fromRGB(159, 115, 255)}):Play()
                    end)
                    button.MouseButton1Up:Connect(function()
                        TweenService:Create(buttonLabel, TweenTable["hover"], {TextColor3 = Color3.fromRGB(190, 190, 190)}):Play()
                    end)
        
                    button.MouseButton1Click:Connect(function()
                        callback_2()
                    end)

                    local ButtonFunctions2 = {}
                    function ButtonFunctions2:Fire()
                        callback_2()

                        return ButtonFunctions2
                    end
                    --
                    function ButtonFunctions2:Hide()
                        button.Visible = false

                        return ButtonFunctions2
                    end
                    --
                    function ButtonFunctions2:Show()
                        button.Visible = true

                        return ButtonFunctions2
                    end
                    --
                    function ButtonFunctions2:Text(text)
                        text = text or "button new text"
                        buttonLabel.Text = text

                        return ButtonFunctions2
                    end
                    --
                    function ButtonFunctions2:Remove()
                        button:Destroy()

                        return ButtonFunctions2
                    end
                    --
                    function ButtonFunctions2:SetFunction(new)
                        new = new or function() end
                        callback_2 = new

                        return ButtonFunctions2
                    end
                    return ButtonFunctions2 and ButtonFunctions
                elseif Amnt > 4 then
                    print("more than 4 buttons are not supported.")
                end
                return ButtonFunctions
            end
            --
            function ButtonFunctions:Fire()
                callback()

                return ButtonFunctions
            end
            --
            function ButtonFunctions:Hide()
                button.Visible = false

                return ButtonFunctions
            end
            --
            function ButtonFunctions:Show()
                button.Visible = true

                return ButtonFunctions
            end
            --
            function ButtonFunctions:Text(text)
                text = text or "button new text"
                buttonLabel.Text = text

                return ButtonFunctions
            end
            --
            function ButtonFunctions:Remove()
                button:Destroy()

                return ButtonFunctions
            end
            --
            function ButtonFunctions:SetFunction(new)
                new = new or function() end
                callback = new

                return ButtonFunctions
            end
            return ButtonFunctions
        end
        --

        function Components:NewSection(text)
            text = text or "section"

            local sectionFrame = Instance.new("Frame")
            local sectionLayout = Instance.new("UIListLayout")
            local leftBar = Instance.new("Frame")
            local sectionLabel = Instance.new("TextLabel")
            local sectionPadding = Instance.new("UIPadding")
            local rightBar = Instance.new("Frame")

            sectionFrame.Name = "sectionFrame"
            sectionFrame.Parent = page
            sectionFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            sectionFrame.BackgroundTransparency = 1.000
            sectionFrame.ClipsDescendants = true
            sectionFrame.Size = UDim2.new(0, 396, 0, 18)

            sectionLayout.Name = "sectionLayout"
            sectionLayout.Parent = sectionFrame
            sectionLayout.FillDirection = Enum.FillDirection.Horizontal
            sectionLayout.SortOrder = Enum.SortOrder.LayoutOrder
            sectionLayout.VerticalAlignment = Enum.VerticalAlignment.Center
            sectionLayout.Padding = UDim.new(0, 4)


            sectionLabel.Name = "sectionLabel"
            sectionLabel.Parent = sectionFrame
            sectionLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            sectionLabel.BackgroundTransparency = 1.000
            sectionLabel.ClipsDescendants = true
            sectionLabel.Position = UDim2.new(0.0252525248, 0, 0.020833334, 0)
            sectionLabel.Size = UDim2.new(0, 0, 0, 18)
            sectionLabel.Font = Enum.Font.Code
            sectionLabel.LineHeight = 1
            sectionLabel.Text = text
            sectionLabel.TextColor3 = Color3.fromRGB(190, 190, 190)
            sectionLabel.TextSize = 14.000
            sectionLabel.TextXAlignment = Enum.TextXAlignment.Left
            sectionLabel.RichText = true

            sectionPadding.Name = "sectionPadding"
            sectionPadding.Parent = sectionLabel
            sectionPadding.PaddingBottom = UDim.new(0, 6)
            sectionPadding.PaddingLeft = UDim.new(0, 0)
            sectionPadding.PaddingRight = UDim.new(0, 6)
            sectionPadding.PaddingTop = UDim.new(0, 6)

            rightBar.Name = "rightBar"
            rightBar.Parent = sectionFrame
            rightBar.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
            rightBar.BorderSizePixel = 0
            rightBar.Position = UDim2.new(0.308080822, 0, 0.479166657, 0)
            rightBar.Size = UDim2.new(0, 403, 0, 1)
            UpdatePageSize()

            local NewSectionSize = TextService:GetTextSize(sectionLabel.Text, sectionLabel.TextSize, sectionLabel.Font, Vector2.new(math.huge,math.huge))
            sectionLabel.Size = UDim2.new(0, NewSectionSize.X, 0, 18)

            local SectionFunctions = {}
            function SectionFunctions:Text(new)
                new = new or text
                sectionLabel.Text = new

                local NewSectionSize = TextService:GetTextSize(sectionLabel.Text, sectionLabel.TextSize, sectionLabel.Font, Vector2.new(math.huge,math.huge))
                sectionLabel.Size = UDim2.new(0, NewSectionSize.X, 0, 18)

                return SectionFunctions
            end
            function SectionFunctions:Hide()
                sectionFrame.Visible = false
                return SectionFunctions
            end
            function SectionFunctions:Show()
                sectionFrame.Visible = true
                return SectionFunctions
            end
            function SectionFunctions:Remove()
                sectionFrame:Destroy()
                return SectionFunctions
            end
            --
            return SectionFunctions
        end

        --

        function Components:NewToggle(text, default, callback)
            text = text or "toggle"
            default = default or false
            callback = callback or function() end

            local toggleButton = Instance.new("TextButton")
            local toggleLayout = Instance.new("UIListLayout")
            local toggleEdge = Instance.new("Frame")
            local toggleEdgeCorner = Instance.new("UICorner")
            local toggle = Instance.new("Frame")
            local toggleCorner = Instance.new("UICorner")
            local toggleGradient = Instance.new("UIGradient")
            local toggleDesign = Instance.new("Frame")
            local toggleDesignCorner = Instance.new("UICorner")
            local toggleDesignGradient = Instance.new("UIGradient")
            local toggleLabel = Instance.new("TextLabel")
            local toggleLabelPadding = Instance.new("UIPadding")
            local Extras = Instance.new("Folder")
            local ExtrasLayout = Instance.new("UIListLayout")

            toggleButton.Name = "toggleButton"
            toggleButton.Parent = page
            toggleButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            toggleButton.BackgroundTransparency = 1.000
            toggleButton.ClipsDescendants = false
            toggleButton.Size = UDim2.new(0, 396, 0, 22)
            toggleButton.Font = Enum.Font.Code
            toggleButton.Text = ""
            toggleButton.TextColor3 = Color3.fromRGB(190, 190, 190)
            toggleButton.TextSize = 14.000
            toggleButton.TextXAlignment = Enum.TextXAlignment.Left

            toggleLayout.Name = "toggleLayout"
            toggleLayout.Parent = toggleButton
            toggleLayout.FillDirection = Enum.FillDirection.Horizontal
            toggleLayout.SortOrder = Enum.SortOrder.LayoutOrder
            toggleLayout.VerticalAlignment = Enum.VerticalAlignment.Center

            toggleEdge.Name = "toggleEdge"
            toggleEdge.Parent = toggleButton
            toggleEdge.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
            toggleEdge.Size = UDim2.new(0, 18, 0, 18)

            toggleEdgeCorner.CornerRadius = UDim.new(0, 2)
            toggleEdgeCorner.Name = "toggleEdgeCorner"
            toggleEdgeCorner.Parent = toggleEdge

            toggle.Name = "toggle"
            toggle.Parent = toggleEdge
            toggle.AnchorPoint = Vector2.new(0.5, 0.5)
            toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            toggle.Position = UDim2.new(0.5, 0, 0.5, 0)
            toggle.Size = UDim2.new(0, 16, 0, 16)

            toggleCorner.CornerRadius = UDim.new(0, 2)
            toggleCorner.Name = "toggleCorner"
            toggleCorner.Parent = toggle

            toggleGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(34, 34, 34)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(28, 28, 28))}
            toggleGradient.Rotation = 90
            toggleGradient.Name = "toggleGradient"
            toggleGradient.Parent = toggle

            toggleDesign.Name = "toggleDesign"
            toggleDesign.Parent = toggle
            toggleDesign.AnchorPoint = Vector2.new(0.5, 0.5)
            toggleDesign.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            toggleDesign.BackgroundTransparency = 1.000
            toggleDesign.Position = UDim2.new(0.5, 0, 0.5, 0)

            toggleDesignCorner.CornerRadius = UDim.new(0, 2)
            toggleDesignCorner.Name = "toggleDesignCorner"
            toggleDesignCorner.Parent = toggleDesign

            toggleDesignGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(157, 115, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(106, 69, 181))}
            toggleDesignGradient.Rotation = 90
            toggleDesignGradient.Name = "toggleDesignGradient"
            toggleDesignGradient.Parent = toggleDesign

            toggleLabel.Name = "toggleLabel"
            toggleLabel.Parent = toggleButton
            toggleLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            toggleLabel.BackgroundTransparency = 1.000
            toggleLabel.Position = UDim2.new(0.0454545468, 0, 0, 0)
            toggleLabel.Size = UDim2.new(0, 377, 0, 22)
            toggleLabel.Font = Enum.Font.Code
            toggleLabel.LineHeight = 1.150
            toggleLabel.Text = text
            toggleLabel.TextColor3 = Color3.fromRGB(190, 190, 190)
            toggleLabel.TextSize = 14.000
            toggleLabel.TextXAlignment = Enum.TextXAlignment.Left
            toggleLabel.RichText = true

            toggleLabelPadding.Name = "toggleLabelPadding"
            toggleLabelPadding.Parent = toggleLabel
            toggleLabelPadding.PaddingLeft = UDim.new(0, 6)

            Extras.Name = "Extras"
            Extras.Parent = toggleButton

            ExtrasLayout.Name = "ExtrasLayout"
            ExtrasLayout.Parent = Extras
            ExtrasLayout.FillDirection = Enum.FillDirection.Horizontal
            ExtrasLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
            ExtrasLayout.SortOrder = Enum.SortOrder.LayoutOrder
            ExtrasLayout.VerticalAlignment = Enum.VerticalAlignment.Center
            ExtrasLayout.Padding = UDim.new(0, 2)

            local NewToggleLabelSize = TextService:GetTextSize(toggleLabel.Text, toggleLabel.TextSize, toggleLabel.Font, Vector2.new(math.huge,math.huge))
            toggleLabel.Size = UDim2.new(0, NewToggleLabelSize.X + 6, 0, 22)

            toggleButton.MouseEnter:Connect(function()
                TweenService:Create(toggleLabel, TweenTable["hover"], {TextColor3 = Color3.fromRGB(210, 210, 210)}):Play()
            end)
            toggleButton.MouseLeave:Connect(function()
                TweenService:Create(toggleLabel, TweenTable["hover"], {TextColor3 = Color3.fromRGB(190, 190, 190)}):Play()
            end)

            CreateTween("toggle_form", 0.13)
            local On = default
            if default then
                On = true
            else
                On = false
            end
            toggleButton.MouseButton1Click:Connect(function()
                On = not On
                local SizeOn = On and UDim2.new(0, 12, 0, 12) or UDim2.new(0, 0, 0, 0)
                local Transparency = On and 0 or 1
                TweenService:Create(toggleDesign, TweenTable["toggle_form"], {Size = SizeOn}):Play()
                TweenService:Create(toggleDesign, TweenTable["toggle_form"], {BackgroundTransparency = Transparency}):Play()
                callback(On)
            end)

            local ToggleFunctions = {}
            function ToggleFunctions:Text(new)
                new = new or text
                toggleLabel.Text = new
                return ToggleFunctions
            end
            --
            function ToggleFunctions:Hide()
                toggleButton.Visible = false
                return ToggleFunctions
            end
            --
            function ToggleFunctions:Show()
                toggleButton.Visible = true
                return ToggleFunctions
            end   
            --         
            function ToggleFunctions:Change()
                On = not On
                local SizeOn = On and UDim2.new(0, 12, 0, 12) or UDim2.new(0, 0, 0, 0)
                local Transparency = On and 0 or 1
                TweenService:Create(toggleDesign, TweenTable["toggle_form"], {Size = SizeOn}):Play()
                TweenService:Create(toggleDesign, TweenTable["toggle_form"], {BackgroundTransparency = Transparency}):Play()
                callback(On)
                return ToggleFunctions
            end
            --
            function ToggleFunctions:Remove()
                toggleButton:Destroy()
                return ToggleFunction
            end
            --
            function ToggleFunctions:Set(state)
                On = state
                local SizeOn = On and UDim2.new(0, 12, 0, 12) or UDim2.new(0, 0, 0, 0)
                local Transparency = On and 0 or 1
                TweenService:Create(toggleDesign, TweenTable["toggle_form"], {Size = SizeOn}):Play()
                TweenService:Create(toggleDesign, TweenTable["toggle_form"], {BackgroundTransparency = Transparency}):Play()
                callback(On)
                return ToggleFunctions
            end
            --
            local callback_t
            function ToggleFunctions:SetFunction(new)
                new = new or function() end
                callback = new
                callback_t = new
                return ToggleFunctions
            end
            UpdatePageSize()
            --
            function ToggleFunctions:AddKeybind(default_t)
                callback_t = callback
                default_t = default_t or Enum.KeyCode.P
                
                local keybind = Instance.new("TextButton")
                local keybindCorner = Instance.new("UICorner")
                local keybindBackground = Instance.new("Frame")
                local keybindGradient = Instance.new("UIGradient")
                local keybindBackCorner = Instance.new("UICorner")
                local keybindButtonLabel = Instance.new("TextLabel")
                local keybindLabelStraint = Instance.new("UISizeConstraint")
                local keybindBackgroundStraint = Instance.new("UISizeConstraint")
                local keybindStraint = Instance.new("UISizeConstraint")

                keybind.Name = "keybind"
                keybind.Parent = Extras
                keybind.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
                keybind.Position = UDim2.new(0.780303001, 0, 0, 0)
                keybind.Size = UDim2.new(0, 87, 0, 22)
                keybind.AutoButtonColor = false
                keybind.Font = Enum.Font.SourceSans
                keybind.Text = ""
                keybind.TextColor3 = Color3.fromRGB(0, 0, 0)
                keybind.TextSize = 14.000
                keybind.Active = false
    
                keybindCorner.CornerRadius = UDim.new(0, 2)
                keybindCorner.Name = "keybindCorner"
                keybindCorner.Parent = keybind
    
                keybindBackground.Name = "keybindBackground"
                keybindBackground.Parent = keybind
                keybindBackground.AnchorPoint = Vector2.new(0.5, 0.5)
                keybindBackground.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                keybindBackground.Position = UDim2.new(0.5, 0, 0.5, 0)
                keybindBackground.Size = UDim2.new(0, 85, 0, 20)
    
                keybindGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(34, 34, 34)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(28, 28, 28))}
                keybindGradient.Rotation = 90
                keybindGradient.Name = "keybindGradient"
                keybindGradient.Parent = keybindBackground
    
                keybindBackCorner.CornerRadius = UDim.new(0, 2)
                keybindBackCorner.Name = "keybindBackCorner"
                keybindBackCorner.Parent = keybindBackground
    
                keybindButtonLabel.Name = "keybindButtonLabel"
                keybindButtonLabel.Parent = keybindBackground
                keybindButtonLabel.AnchorPoint = Vector2.new(0.5, 0.5)
                keybindButtonLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                keybindButtonLabel.BackgroundTransparency = 1.000
                keybindButtonLabel.ClipsDescendants = true
                keybindButtonLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
                keybindButtonLabel.Size = UDim2.new(0, 85, 0, 20)
                keybindButtonLabel.Font = Enum.Font.Code
                keybindButtonLabel.Text = ". . ."
                keybindButtonLabel.TextColor3 = Color3.fromRGB(190, 190, 190)
                keybindButtonLabel.TextSize = 14.000
                keybindButtonLabel.RichText = true
    
                keybindLabelStraint.Name = "keybindLabelStraint"
                keybindLabelStraint.Parent = keybindButtonLabel
                keybindLabelStraint.MinSize = Vector2.new(28, 20)
    
                keybindBackgroundStraint.Name = "keybindBackgroundStraint"
                keybindBackgroundStraint.Parent = keybindBackground
                keybindBackgroundStraint.MinSize = Vector2.new(28, 20)
    
                keybindStraint.Name = "keybindStraint"
                keybindStraint.Parent = keybind
                keybindStraint.MinSize = Vector2.new(30, 22)
    
                local Shortcuts = {
                    Return = "enter"
                }
    
                keybindButtonLabel.Text = Shortcuts[default_t.Name] or default_t.Name
                CreateTween("keybind", 0.08)
                
                local NewKeybindSize = TextService:GetTextSize(keybindButtonLabel.Text, keybindButtonLabel.TextSize, keybindButtonLabel.Font, Vector2.new(math.huge,math.huge))
                keybindButtonLabel.Size = UDim2.new(0, NewKeybindSize.X + 6, 0, 20)
                keybindBackground.Size = UDim2.new(0, NewKeybindSize.X + 6, 0, 20)
                keybind.Size = UDim2.new(0, NewKeybindSize.X + 8, 0, 22)
                
                function ResizeKeybind()
                    NewKeybindSize = TextService:GetTextSize(keybindButtonLabel.Text, keybindButtonLabel.TextSize, keybindButtonLabel.Font, Vector2.new(math.huge,math.huge))
                    TweenService:Create(keybindButtonLabel, TweenTable["keybind"], {Size = UDim2.new(0, NewKeybindSize.X + 6, 0, 20)}):Play()
                    TweenService:Create(keybindBackground, TweenTable["keybind"], {Size = UDim2.new(0, NewKeybindSize.X + 6, 0, 20)}):Play()
                    TweenService:Create(keybind, TweenTable["keybind"], {Size = UDim2.new(0, NewKeybindSize.X + 8, 0, 22)}):Play()
                end
                keybindButtonLabel:GetPropertyChangedSignal("Text"):Connect(ResizeKeybind)
                ResizeKeybind()
                UpdatePageSize()
    
                local ChosenKey = default_t.Name
    
                keybind.MouseButton1Click:Connect(function()
                    keybindButtonLabel.Text = ". . ."
                    local InputWait = UserInputService.InputBegan:wait()
                    if UserInputService.WindowFocused and InputWait.KeyCode.Name ~= "Unknown" then
                        local Result = Shortcuts[InputWait.KeyCode.Name] or InputWait.KeyCode.Name
                        keybindButtonLabel.Text = Result
                        ChosenKey = InputWait.KeyCode.Name
                    end
                end)
    
                local ChatTextBox = Player.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar
                if UserInputService.WindowFocused then
                    UserInputService.InputBegan:Connect(function(c, p)
                        if not p then
                            if c.KeyCode.Name == ChosenKey and not ChatTextBox:IsFocused() then
                                On = not On
                                local SizeOn = On and UDim2.new(0, 12, 0, 12) or UDim2.new(0, 0, 0, 0)
                                local Transparency = On and 0 or 1
                                TweenService:Create(toggleDesign, TweenTable["toggle_form"], {Size = SizeOn}):Play()
                                TweenService:Create(toggleDesign, TweenTable["toggle_form"], {BackgroundTransparency = Transparency}):Play()
                                callback_t(On)
                                return
                            end
                        end
                    end)
                end
    
                local ExtraKeybindFunctions = {}
                function ExtraKeybindFunctions:SetKey(new)
                    new = new or ChosenKey.Name
                    ChosenKey = new.Name
                    keybindButtonLabel.Text = new.Name
                    return ExtraKeybindFunctions
                end
                --
                function ExtraKeybindFunctions:Fire()
                    callback_t(ChosenKey)
                    return ExtraKeybindFunctions
                end
                --
                function ExtraKeybindFunctions:SetFunction(new)
                    new = new or function() end
                    callback_t = new
                    return ExtraKeybindFunctions 
                end
                --
                function ExtraKeybindFunctions:Hide()
                    keybindFrame.Visible = false
                    return ExtraKeybindFunctions
                end
                --
                function ExtraKeybindFunctions:Show()
                    keybindFrame.Visible = true
                    return ExtraKeybindFunctions
                end
                return ExtraKeybindFunctions and ToggleFunctions
            end

            if default then
                toggleDesign.Size = UDim2.new(0, 12, 0, 12)
                toggleDesign.BackgroundTransparency = 0
                callback(true)
            end
            return ToggleFunctions
        end

        function Components:NewKeybind(text, default, callback)
            text = text or "keybind"
            default = default or Enum.KeyCode.P
            callback = callback or function() end

            local keybindFrame = Instance.new("Frame")
            local keybindButton = Instance.new("TextButton")
            local keybindLayout = Instance.new("UIListLayout")
            local keybindLabel = Instance.new("TextLabel")
            local keybindPadding = Instance.new("UIPadding")
            local keybindFolder = Instance.new("Folder")
            local keybindFolderLayout = Instance.new("UIListLayout")
            local keybind = Instance.new("TextButton")
            local keybindCorner = Instance.new("UICorner")
            local keybindBackground = Instance.new("Frame")
            local keybindGradient = Instance.new("UIGradient")
            local keybindBackCorner = Instance.new("UICorner")
            local keybindButtonLabel = Instance.new("TextLabel")
            local keybindLabelStraint = Instance.new("UISizeConstraint")
            local keybindBackgroundStraint = Instance.new("UISizeConstraint")
            local keybindStraint = Instance.new("UISizeConstraint")

            keybindFrame.Name = "keybindFrame"
            keybindFrame.Parent = page
            keybindFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            keybindFrame.BackgroundTransparency = 1.000
            keybindFrame.ClipsDescendants = true
            keybindFrame.Size = UDim2.new(0, 396, 0, 24)

            keybindButton.Name = "keybindButton"
            keybindButton.Parent = keybindFrame
            keybindButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            keybindButton.BackgroundTransparency = 1.000
            keybindButton.Size = UDim2.new(0, 396, 0, 24)
            keybindButton.AutoButtonColor = false
            keybindButton.Font = Enum.Font.SourceSans
            keybindButton.Text = ""
            keybindButton.TextColor3 = Color3.fromRGB(0, 0, 0)
            keybindButton.TextSize = 14.000

            keybindLayout.Name = "keybindLayout"
            keybindLayout.Parent = keybindButton
            keybindLayout.FillDirection = Enum.FillDirection.Horizontal
            keybindLayout.SortOrder = Enum.SortOrder.LayoutOrder
            keybindLayout.VerticalAlignment = Enum.VerticalAlignment.Center
            keybindLayout.Padding = UDim.new(0, 4)

            keybindLabel.Name = "keybindLabel"
            keybindLabel.Parent = keybindButton
            keybindLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            keybindLabel.BackgroundTransparency = 1.000
            keybindLabel.Size = UDim2.new(0, 396, 0, 24)
            keybindLabel.Font = Enum.Font.Code
            keybindLabel.Text = text
            keybindLabel.TextColor3 = Color3.fromRGB(190, 190, 190)
            keybindLabel.TextSize = 14.000
            keybindLabel.TextWrapped = true
            keybindLabel.TextXAlignment = Enum.TextXAlignment.Left
            keybindLabel.RichText = true

            keybindPadding.Name = "keybindPadding"
            keybindPadding.Parent = keybindLabel
            keybindPadding.PaddingBottom = UDim.new(0, 6)
            keybindPadding.PaddingLeft = UDim.new(0, 2)
            keybindPadding.PaddingRight = UDim.new(0, 6)
            keybindPadding.PaddingTop = UDim.new(0, 6)

            keybindFolder.Name = "keybindFolder"
            keybindFolder.Parent = keybindFrame

            keybindFolderLayout.Name = "keybindFolderLayout"
            keybindFolderLayout.Parent = keybindFolder
            keybindFolderLayout.FillDirection = Enum.FillDirection.Horizontal
            keybindFolderLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
            keybindFolderLayout.SortOrder = Enum.SortOrder.LayoutOrder
            keybindFolderLayout.VerticalAlignment = Enum.VerticalAlignment.Center
            keybindFolderLayout.Padding = UDim.new(0, 4)

            keybind.Name = "keybind"
            keybind.Parent = keybindFolder
            keybind.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
            keybind.Position = UDim2.new(0.780303001, 0, 0, 0)
            keybind.Size = UDim2.new(0, 87, 0, 22)
            keybind.AutoButtonColor = false
            keybind.Font = Enum.Font.SourceSans
            keybind.Text = ""
            keybind.TextColor3 = Color3.fromRGB(0, 0, 0)
            keybind.TextSize = 14.000
            keybind.Active = false

            keybindCorner.CornerRadius = UDim.new(0, 2)
            keybindCorner.Name = "keybindCorner"
            keybindCorner.Parent = keybind

            keybindBackground.Name = "keybindBackground"
            keybindBackground.Parent = keybind
            keybindBackground.AnchorPoint = Vector2.new(0.5, 0.5)
            keybindBackground.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            keybindBackground.Position = UDim2.new(0.5, 0, 0.5, 0)
            keybindBackground.Size = UDim2.new(0, 85, 0, 20)

            keybindGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(34, 34, 34)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(28, 28, 28))}
            keybindGradient.Rotation = 90
            keybindGradient.Name = "keybindGradient"
            keybindGradient.Parent = keybindBackground

            keybindBackCorner.CornerRadius = UDim.new(0, 2)
            keybindBackCorner.Name = "keybindBackCorner"
            keybindBackCorner.Parent = keybindBackground

            keybindButtonLabel.Name = "keybindButtonLabel"
            keybindButtonLabel.Parent = keybindBackground
            keybindButtonLabel.AnchorPoint = Vector2.new(0.5, 0.5)
            keybindButtonLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            keybindButtonLabel.BackgroundTransparency = 1.000
            keybindButtonLabel.ClipsDescendants = true
            keybindButtonLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
            keybindButtonLabel.Size = UDim2.new(0, 85, 0, 20)
            keybindButtonLabel.Font = Enum.Font.Code
            keybindButtonLabel.Text = ". . ."
            keybindButtonLabel.TextColor3 = Color3.fromRGB(190, 190, 190)
            keybindButtonLabel.TextSize = 14.000
            keybindButtonLabel.RichText = true

            keybindLabelStraint.Name = "keybindLabelStraint"
            keybindLabelStraint.Parent = keybindButtonLabel
            keybindLabelStraint.MinSize = Vector2.new(28, 20)

            keybindBackgroundStraint.Name = "keybindBackgroundStraint"
            keybindBackgroundStraint.Parent = keybindBackground
            keybindBackgroundStraint.MinSize = Vector2.new(28, 20)

            keybindStraint.Name = "keybindStraint"
            keybindStraint.Parent = keybind
            keybindStraint.MinSize = Vector2.new(30, 22)

            local Shortcuts = {
                Return = "enter"
            }

            keybindButtonLabel.Text = Shortcuts[default.Name] or default.Name
            CreateTween("keybind", 0.08)
            
            local NewKeybindSize = TextService:GetTextSize(keybindButtonLabel.Text, keybindButtonLabel.TextSize, keybindButtonLabel.Font, Vector2.new(math.huge,math.huge))
            keybindButtonLabel.Size = UDim2.new(0, NewKeybindSize.X + 6, 0, 20)
            keybindBackground.Size = UDim2.new(0, NewKeybindSize.X + 6, 0, 20)
            keybind.Size = UDim2.new(0, NewKeybindSize.X + 8, 0, 22)
            
            function ResizeKeybind()
                NewKeybindSize = TextService:GetTextSize(keybindButtonLabel.Text, keybindButtonLabel.TextSize, keybindButtonLabel.Font, Vector2.new(math.huge,math.huge))
                TweenService:Create(keybindButtonLabel, TweenTable["keybind"], {Size = UDim2.new(0, NewKeybindSize.X + 6, 0, 20)}):Play()
                TweenService:Create(keybindBackground, TweenTable["keybind"], {Size = UDim2.new(0, NewKeybindSize.X + 6, 0, 20)}):Play()
                TweenService:Create(keybind, TweenTable["keybind"], {Size = UDim2.new(0, NewKeybindSize.X + 8, 0, 22)}):Play()
            end
            keybindButtonLabel:GetPropertyChangedSignal("Text"):Connect(ResizeKeybind)
            ResizeKeybind()

            local ChosenKey = default
            keybindButton.MouseButton1Click:Connect(function()
                keybindButtonLabel.Text = "..."
                local InputWait = UserInputService.InputBegan:wait()
                if UserInputService.WindowFocused and InputWait.KeyCode.Name ~= "Unknown" then
                    local Result = Shortcuts[InputWait.KeyCode.Name] or InputWait.KeyCode.Name
                    keybindButtonLabel.Text = Result
                    ChosenKey = InputWait.KeyCode.Name
                end
            end)

            keybind.MouseButton1Click:Connect(function()
                keybindButtonLabel.Text = ". . ."
                local InputWait = UserInputService.InputBegan:wait()
                if UserInputService.WindowFocused and InputWait.KeyCode.Name ~= "Unknown" then
                    local Result = Shortcuts[InputWait.KeyCode.Name] or InputWait.KeyCode.Name
                    keybindButtonLabel.Text = Result
                    ChosenKey = InputWait.KeyCode.Name
                end
            end)

            local ChatTextBox = Player.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar
            if UserInputService.WindowFocused then
                UserInputService.InputBegan:Connect(function(c, p)
                    if not p then
                        if c.KeyCode.Name == ChosenKey and not ChatTextBox:IsFocused() then
                            callback(ChosenKey)
                            return
                        end
                    end
                end)
            end

            UpdatePageSize()

            local KeybindFunctions = {}
            function KeybindFunctions:Fire()
                callback(ChosenKey)
                return KeybindFunctions
            end
            --
            function KeybindFunctions:SetFunction(new)
                new = new or function() end
                callback = new
                return KeybindFunctions 
            end
            --
            function KeybindFunctions:SetKey(new)
                new = new or ChosenKey.Name
                ChosenKey = new.Name
                keybindButtonLabel.Text = new.Name
                return KeybindFunctions
            end
            --
            function KeybindFunctions:Text(new)
                new = new or keybindLabel.Text
                keybindLabel.Text = new
                return KeybindFunctions
            end
            --
            function KeybindFunctions:Hide()
                keybindFrame.Visible = false
                return KeybindFunctions
            end
            --
            function KeybindFunctions:Show()
                keybindFrame.Visible = true
                return KeybindFunctions
            end
            return KeybindFunctions
        end
        --
        function Components:NewTextbox(text, default, place, format, type, autoexec, autoclear, callback)
            text = text or "text box"
            default = default or ""
            place = place or ""
            format = format or "all" -- all, numbers, lower, upper
            type = type or "small" -- small, medium, large
            autoexec = autoexec or true
            autoclear = autoclear or false
            callback = callback or function() end

            if type == "small" then
                local textboxFrame = Instance.new("Frame")
                local textboxFolder = Instance.new("Folder")
                local textboxFolderLayout = Instance.new("UIListLayout")
                local textbox = Instance.new("Frame")
                local textboxLayout = Instance.new("UIListLayout")
                local textboxStraint = Instance.new("UISizeConstraint")
                local textboxCorner = Instance.new("UICorner")
                local textboxTwo = Instance.new("Frame")
                local textboxTwoStraint = Instance.new("UISizeConstraint")
                local textboxTwoGradient = Instance.new("UIGradient")
                local textboxTwoCorner = Instance.new("UICorner")
                local textBoxValues = Instance.new("TextBox")
                local textBoxValuesStraint = Instance.new("UISizeConstraint")
                local textboxTwoLayout = Instance.new("UIListLayout")
                local textboxLabel = Instance.new("TextLabel")
                local textboxPadding = Instance.new("UIPadding")
                local textBoxValuesPadding = Instance.new("UIPadding")
    
                textboxFrame.Name = "textboxFrame"
                textboxFrame.Parent = page
                textboxFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                textboxFrame.BackgroundTransparency = 1.000
                textboxFrame.ClipsDescendants = true
                textboxFrame.Size = UDim2.new(0, 396, 0, 24)
    
                textboxFolder.Name = "textboxFolder"
                textboxFolder.Parent = textboxFrame
    
                textboxFolderLayout.Name = "textboxFolderLayout"
                textboxFolderLayout.Parent = textboxFolder
                textboxFolderLayout.FillDirection = Enum.FillDirection.Horizontal
                textboxFolderLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
                textboxFolderLayout.SortOrder = Enum.SortOrder.LayoutOrder
                textboxFolderLayout.VerticalAlignment = Enum.VerticalAlignment.Center
                textboxFolderLayout.Padding = UDim.new(0, 4)
    
                textbox.Name = "textbox"
                textbox.Parent = textboxFolder
                textbox.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
                textbox.Size = UDim2.new(0, 133, 0, 22)
    
                textboxLayout.Name = "textboxLayout"
                textboxLayout.Parent = textbox
                textboxLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                textboxLayout.SortOrder = Enum.SortOrder.LayoutOrder
                textboxLayout.VerticalAlignment = Enum.VerticalAlignment.Center
    
                textboxStraint.Name = "textboxStraint"
                textboxStraint.Parent = textbox
                textboxStraint.MinSize = Vector2.new(50, 22)
    
                textboxCorner.CornerRadius = UDim.new(0, 2)
                textboxCorner.Name = "textboxCorner"
                textboxCorner.Parent = textbox
    
                textboxTwo.Name = "textboxTwo"
                textboxTwo.Parent = textbox
                textboxTwo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                textboxTwo.Size = UDim2.new(0, 131, 0, 20)
    
                textboxTwoStraint.Name = "textboxTwoStraint"
                textboxTwoStraint.Parent = textboxTwo
                textboxTwoStraint.MinSize = Vector2.new(48, 20)
    
                textboxTwoGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(34, 34, 34)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(28, 28, 28))}
                textboxTwoGradient.Rotation = 90
                textboxTwoGradient.Name = "textboxTwoGradient"
                textboxTwoGradient.Parent = textboxTwo
    
                textboxTwoCorner.CornerRadius = UDim.new(0, 2)
                textboxTwoCorner.Name = "textboxTwoCorner"
                textboxTwoCorner.Parent = textboxTwo
    
                textBoxValues.Name = "textBoxValues"
                textBoxValues.Parent = textboxTwo
                textBoxValues.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                textBoxValues.BackgroundTransparency = 1.000
                textBoxValues.Position = UDim2.new(0.664141417, 0, 0.0416666679, 0)
                textBoxValues.Size = UDim2.new(0, 131, 0, 20)
                textBoxValues.Font = Enum.Font.Code
                textBoxValues.PlaceholderColor3 = Color3.fromRGB(140, 140, 140)
                textBoxValues.PlaceholderText = place
                textBoxValues.Text = ""
                textBoxValues.TextColor3 = Color3.fromRGB(190, 190, 190)
                textBoxValues.TextSize = 14.000
                textBoxValues.ClearTextOnFocus = autoclear
                textBoxValues.ClipsDescendants = true
                textBoxValues.TextXAlignment = Enum.TextXAlignment.Right

                textBoxValuesPadding.Name = "textBoxValuesPadding"
                textBoxValuesPadding.Parent = textBoxValues
                textBoxValuesPadding.PaddingBottom = UDim.new(0, 6)
                textBoxValuesPadding.PaddingLeft = UDim.new(0, 6)
                textBoxValuesPadding.PaddingRight = UDim.new(0, 4)
                textBoxValuesPadding.PaddingTop = UDim.new(0, 6)
    
                textBoxValuesStraint.Name = "textBoxValuesStraint"
                textBoxValuesStraint.Parent = textBoxValues
                textBoxValuesStraint.MinSize = Vector2.new(48, 20)
    
                textboxTwoLayout.Name = "textboxTwoLayout"
                textboxTwoLayout.Parent = textboxTwo
                textboxTwoLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                textboxTwoLayout.SortOrder = Enum.SortOrder.LayoutOrder
                textboxTwoLayout.VerticalAlignment = Enum.VerticalAlignment.Center
    
                textboxLabel.Name = "textboxLabel"
                textboxLabel.Parent = textboxFrame
                textboxLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                textboxLabel.BackgroundTransparency = 1.000
                textboxLabel.Size = UDim2.new(0, 396, 0, 24)
                textboxLabel.Font = Enum.Font.Code
                textboxLabel.Text = text
                textboxLabel.TextColor3 = Color3.fromRGB(190, 190, 190)
                textboxLabel.TextSize = 14.000
                textboxLabel.TextWrapped = true
                textboxLabel.TextXAlignment = Enum.TextXAlignment.Left
                textboxLabel.RichText = true
    
                textboxPadding.Name = "textboxPadding"
                textboxPadding.Parent = textboxLabel
                textboxPadding.PaddingBottom = UDim.new(0, 6)
                textboxPadding.PaddingLeft = UDim.new(0, 2)
                textboxPadding.PaddingRight = UDim.new(0, 6)
                textboxPadding.PaddingTop = UDim.new(0, 6)
    
                local ForcedMinSize = TextService:GetTextSize(textBoxValues.PlaceholderText, textBoxValues.TextSize, textBoxValues.Font, Vector2.new(math.huge,math.huge))
                local ForcedMaxSize = TextService:GetTextSize(textboxLabel.Text, textboxLabel.TextSize, textboxLabel.Font, Vector2.new(math.huge,math.huge))
                local NewTextboxSize = TextService:GetTextSize(textBoxValues.Text, textBoxValues.TextSize, textBoxValues.Font, Vector2.new(math.huge,math.huge))

                CreateTween("TextBox", 0.07)

                textboxStraint.MinSize = Vector2.new(ForcedMinSize.X + 4, 22)
                textboxTwoStraint.MinSize = Vector2.new(ForcedMinSize.X + 2, 20)
                textBoxValuesStraint.MinSize = Vector2.new(ForcedMinSize.X + 2, 20)
                textboxStraint.MaxSize = Vector2.new(386 - ForcedMaxSize.X, 22)
                textboxTwoStraint.MaxSize = Vector2.new(388 - ForcedMaxSize.X, 20)
                textBoxValuesStraint.MaxSize = Vector2.new(388 - ForcedMaxSize.X, 20)
                
                function ResizeTextStraints()
                    ForcedMinSize = TextService:GetTextSize(textBoxValues.PlaceholderText, textBoxValues.TextSize, textBoxValues.Font, Vector2.new(math.huge,math.huge))
                    if place ~= "" then
                        textboxStraint.MinSize = Vector2.new(ForcedMinSize.X + 10, 22)
                        textboxTwoStraint.MinSize = Vector2.new(ForcedMinSize.X + 8, 20)
                        textBoxValuesStraint.MinSize = Vector2.new(ForcedMinSize.X + 8, 20)
                    else
                        textboxStraint.MinSize = Vector2.new(28, 22)
                        textboxTwoStraint.MinSize = Vector2.new(26, 20)
                        textBoxValuesStraint.MinSize = Vector2.new(26, 20)
                    end
                end
                function ResizeTextBox()
                    NewTextboxSize = TextService:GetTextSize(textBoxValues.Text, textBoxValues.TextSize, textBoxValues.Font, Vector2.new(math.huge,math.huge))
                    if NewTextboxSize.X < (396 - ForcedMaxSize.X) - 10 then
                        TweenService:Create(textBoxValues, TweenTable["TextBox"], {Size = UDim2.new(0, NewTextboxSize.X + 8, 0, 20)}):Play()
                        TweenService:Create(textboxTwo, TweenTable["TextBox"], {Size = UDim2.new(0, NewTextboxSize.X + 8, 0, 20)}):Play()
                        TweenService:Create(textbox, TweenTable["TextBox"], {Size = UDim2.new(0, NewTextboxSize.X + 10, 0, 22)}):Play()
                    else
                        TweenService:Create(textBoxValues, TweenTable["TextBox"], {Size = UDim2.new(0, (396 - ForcedMaxSize.X) - 12, 0, 20)}):Play()
                        TweenService:Create(textboxTwo, TweenTable["TextBox"], {Size = UDim2.new(0, (396 - ForcedMaxSize.X) - 12, 0, 20)}):Play()
                        TweenService:Create(textbox, TweenTable["TextBox"], {Size = UDim2.new(0, (396 - ForcedMaxSize.X) - 10, 0, 22)}):Play()
                    end
                end
                function SetMaxSize()
                    ForcedMaxSize = TextService:GetTextSize(textboxLabel.Text, textboxLabel.TextSize, textboxLabel.Font, Vector2.new(math.huge,math.huge))
                    local def = 396 - ForcedMaxSize.X
                    textboxStraint.MaxSize = Vector2.new(def - 10, 22)
                    textboxTwoStraint.MaxSize = Vector2.new(def - 12, 20)
                    textBoxValuesStraint.MaxSize = Vector2.new(def - 12, 20)
                end

                ResizeTextBox()
                ResizeTextStraints()
                SetMaxSize()
                UpdatePageSize()

                textBoxValues:GetPropertyChangedSignal("Text"):Connect(ResizeTextBox)
                textBoxValues:GetPropertyChangedSignal("Text"):Connect(SetMaxSize)
                textBoxValues:GetPropertyChangedSignal("Text"):Connect(ResizeTextStraints)
                textBoxValues:GetPropertyChangedSignal("PlaceholderText"):Connect(ResizeTextStraints)
                textBoxValues:GetPropertyChangedSignal("PlaceholderText"):Connect(SetMaxSize)
                textBoxValues:GetPropertyChangedSignal("PlaceholderText"):Connect(ResizeTextBox)
                textboxLabel:GetPropertyChangedSignal("Text"):Connect(SetMaxSize)

                textBoxValues:GetPropertyChangedSignal("Text"):Connect(function()
                    if format == "numbers" then
                        textBoxValues.Text = textBoxValues.Text:gsub("%D+", "")
                    end
                end)

                textBoxValues:GetPropertyChangedSignal("Text"):Connect(function()
                    if format == "lower" then
                        textBoxValues.Text = textBoxValues.Text:lower()
                    end
                end)

                textBoxValues:GetPropertyChangedSignal("Text"):Connect(function()
                    if format == "upper" then
                        textBoxValues.Text = textBoxValues.Text:upper()
                    end
                end)

                textBoxValues:GetPropertyChangedSignal("Text"):Connect(function()
                    if format == "all" or format == "" then
                        textBoxValues.Text = textBoxValues.Text
                    end
                end)

                textboxFrame.MouseEnter:Connect(function()
                    TweenService:Create(textboxLabel, TweenTable["TextBox"], {TextColor3 = Color3.fromRGB(210, 210, 210)}):Play()
                end)

                textboxFrame.MouseLeave:Connect(function()
                    TweenService:Create(textboxLabel, TweenTable["TextBox"], {TextColor3 = Color3.fromRGB(190, 190, 190)}):Play()
                end)

                textBoxValues.Focused:Connect(function()
                    textBoxValues:GetPropertyChangedSignal("Text"):Connect(ResizeTextBox)
                    TweenService:Create(textbox, TweenTable["TextBox"], {BackgroundColor3 = Color3.fromRGB(159, 115, 255)}):Play()
                end)

                textBoxValues.FocusLost:Connect(function()
                    TweenService:Create(textbox, TweenTable["TextBox"], {BackgroundColor3 = Color3.fromRGB(60, 60, 60)}):Play()
                end)

                textBoxValues.FocusLost:Connect(function(enterPressed)
                    if not autoexec then
                        if enterPressed then
                            callback(textBoxValues.Text)
                        end
                    else
                        callback(textBoxValues.Text)
                    end
                end)

                UpdatePageSize()

                local TextboxFunctions = {}
                function TextboxFunctions:Input(new)
                    new = new or textBoxValues.Text
                    textBoxValues = new
                    return TextboxFunctions
                end
                --
                function TextboxFunctions:Fire()
                    callback(textBoxValues.Text)
                    return TextboxFunctions
                end
                --
                function TextboxFunctions:SetFunction(new)
                    new = new or callback
                    callback = new
                    return TextboxFunctions
                end
                --
                function TextboxFunctions:Text(new)
                    new = new or textboxLabel.Text
                    textboxLabel.Text = new
                    return TextboxFunctions
                end
                --
                function TextboxFunctions:Hide()
                    textboxFrame.Visible = false
                    return TextboxFunctions
                end
                --
                function TextboxFunctions:Show()
                    textboxFrame.Visible = true
                    return TextboxFunctions
                end
                --
                function TextboxFunctions:Remove()
                    textboxFrame:Destroy()
                    return TextboxFunctions
                end
                --
                function TextboxFunctions:Place(new)
                    new = new or textBoxValues.PlaceholderText
                    textBoxValues.PlaceholderText = new
                    return TextboxFunctions
                end
                return TextboxFunctions
            elseif type == "medium" then
                local textboxFrame = Instance.new("Frame")
                local textboxFolder = Instance.new("Folder")
                local textboxFolderLayout = Instance.new("UIListLayout")
                local textbox = Instance.new("Frame")
                local textboxLayout = Instance.new("UIListLayout")
                local textboxStraint = Instance.new("UISizeConstraint")
                local textboxCorner = Instance.new("UICorner")
                local textboxTwo = Instance.new("Frame")
                local textboxTwoStraint = Instance.new("UISizeConstraint")
                local textboxTwoGradient = Instance.new("UIGradient")
                local textboxTwoCorner = Instance.new("UICorner")
                local textBoxValues = Instance.new("TextBox")
                local textBoxValuesStraint = Instance.new("UISizeConstraint")
                local textBoxValuesPadding = Instance.new("UIPadding")
                local textboxTwoLayout = Instance.new("UIListLayout")
                local textboxLabel = Instance.new("TextLabel")
                local textboxPadding = Instance.new("UIPadding")

                textboxFrame.Name = "textboxFrame"
                textboxFrame.Parent = page
                textboxFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                textboxFrame.BackgroundTransparency = 1.000
                textboxFrame.ClipsDescendants = true
                textboxFrame.Size = UDim2.new(0, 396, 0, 46)

                textboxFolder.Name = "textboxFolder"
                textboxFolder.Parent = textboxFrame

                textboxFolderLayout.Name = "textboxFolderLayout"
                textboxFolderLayout.Parent = textboxFolder
                textboxFolderLayout.FillDirection = Enum.FillDirection.Horizontal
                textboxFolderLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                textboxFolderLayout.SortOrder = Enum.SortOrder.LayoutOrder
                textboxFolderLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
                textboxFolderLayout.Padding = UDim.new(0, 4)

                textbox.Name = "textbox"
                textbox.Parent = textboxFolder
                textbox.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
                textbox.Size = UDim2.new(0, 396, 0, 22)

                textboxLayout.Name = "textboxLayout"
                textboxLayout.Parent = textbox
                textboxLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                textboxLayout.SortOrder = Enum.SortOrder.LayoutOrder
                textboxLayout.VerticalAlignment = Enum.VerticalAlignment.Center

                textboxStraint.Name = "textboxStraint"
                textboxStraint.Parent = textbox
                textboxStraint.MaxSize = Vector2.new(396, 22)
                textboxStraint.MinSize = Vector2.new(396, 22)

                textboxCorner.CornerRadius = UDim.new(0, 2)
                textboxCorner.Name = "textboxCorner"
                textboxCorner.Parent = textbox

                textboxTwo.Name = "textboxTwo"
                textboxTwo.Parent = textbox
                textboxTwo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                textboxTwo.Size = UDim2.new(0, 394, 0, 20)

                textboxTwoStraint.Name = "textboxTwoStraint"
                textboxTwoStraint.Parent = textboxTwo
                textboxTwoStraint.MaxSize = Vector2.new(394, 20)
                textboxTwoStraint.MinSize = Vector2.new(394, 20)

                textboxTwoGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(34, 34, 34)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(28, 28, 28))}
                textboxTwoGradient.Rotation = 90
                textboxTwoGradient.Name = "textboxTwoGradient"
                textboxTwoGradient.Parent = textboxTwo

                textboxTwoCorner.CornerRadius = UDim.new(0, 2)
                textboxTwoCorner.Name = "textboxTwoCorner"
                textboxTwoCorner.Parent = textboxTwo

                textBoxValues.Name = "textBoxValues"
                textBoxValues.Parent = textboxTwo
                textBoxValues.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                textBoxValues.BackgroundTransparency = 1.000
                textBoxValues.ClipsDescendants = true
                textBoxValues.Position = UDim2.new(-0.587786257, 0, 0, 0)
                textBoxValues.Size = UDim2.new(0, 394, 0, 20)
                textBoxValues.Font = Enum.Font.Code
                textBoxValues.PlaceholderColor3 = Color3.fromRGB(140, 140, 140)
                textBoxValues.PlaceholderText = place
                textBoxValues.Text = default
                textBoxValues.TextColor3 = Color3.fromRGB(190, 190, 190)
                textBoxValues.TextSize = 14.000
                textBoxValues.TextXAlignment = Enum.TextXAlignment.Left

                textBoxValuesStraint.Name = "textBoxValuesStraint"
                textBoxValuesStraint.Parent = textBoxValues
                textBoxValuesStraint.MaxSize = Vector2.new(394, 20)
                textBoxValuesStraint.MinSize = Vector2.new(394, 20)

                textBoxValuesPadding.Name = "textBoxValuesPadding"
                textBoxValuesPadding.Parent = textBoxValues
                textBoxValuesPadding.PaddingBottom = UDim.new(0, 6)
                textBoxValuesPadding.PaddingLeft = UDim.new(0, 4)
                textBoxValuesPadding.PaddingRight = UDim.new(0, 6)
                textBoxValuesPadding.PaddingTop = UDim.new(0, 6)

                textboxTwoLayout.Name = "textboxTwoLayout"
                textboxTwoLayout.Parent = textboxTwo
                textboxTwoLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                textboxTwoLayout.SortOrder = Enum.SortOrder.LayoutOrder
                textboxTwoLayout.VerticalAlignment = Enum.VerticalAlignment.Center

                textboxLabel.Name = "textboxLabel"
                textboxLabel.Parent = textboxFrame
                textboxLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                textboxLabel.BackgroundTransparency = 1.000
                textboxLabel.Size = UDim2.new(0, 396, 0, 24)
                textboxLabel.Font = Enum.Font.Code
                textboxLabel.Text = text
                textboxLabel.TextColor3 = Color3.fromRGB(190, 190, 190)
                textboxLabel.TextSize = 14.000
                textboxLabel.TextWrapped = true
                textboxLabel.TextXAlignment = Enum.TextXAlignment.Left
                textboxLabel.RichText = true

                textboxPadding.Name = "textboxPadding"
                textboxPadding.Parent = textboxLabel
                textboxPadding.PaddingBottom = UDim.new(0, 6)
                textboxPadding.PaddingLeft = UDim.new(0, 2)
                textboxPadding.PaddingRight = UDim.new(0, 6)
                textboxPadding.PaddingTop = UDim.new(0, 6)

                CreateTween("TextBox", 0.07)
                UpdatePageSize()

                textBoxValues:GetPropertyChangedSignal("Text"):Connect(function()
                    if format == "numbers" then
                        textBoxValues.Text = textBoxValues.Text:gsub("%D+", "")
                    end
                end)

                textBoxValues:GetPropertyChangedSignal("Text"):Connect(function()
                    if format == "lower" then
                        textBoxValues.Text = textBoxValues.Text:lower()
                    end
                end)

                textBoxValues:GetPropertyChangedSignal("Text"):Connect(function()
                    if format == "upper" then
                        textBoxValues.Text = textBoxValues.Text:upper()
                    end
                end)

                textBoxValues:GetPropertyChangedSignal("Text"):Connect(function()
                    if format == "all" or format == "" then
                        textBoxValues.Text = textBoxValues.Text
                    end
                end)

                textboxFrame.MouseEnter:Connect(function()
                    TweenService:Create(textboxLabel, TweenTable["TextBox"], {TextColor3 = Color3.fromRGB(210, 210, 210)}):Play()
                end)

                textboxFrame.MouseLeave:Connect(function()
                    TweenService:Create(textboxLabel, TweenTable["TextBox"], {TextColor3 = Color3.fromRGB(190, 190, 190)}):Play()
                end)

                textBoxValues.Focused:Connect(function()
                    TweenService:Create(textbox, TweenTable["TextBox"], {BackgroundColor3 = Color3.fromRGB(159, 115, 255)}):Play()
                end)

                textBoxValues.FocusLost:Connect(function()
                    TweenService:Create(textbox, TweenTable["TextBox"], {BackgroundColor3 = Color3.fromRGB(60, 60, 60)}):Play()
                end)

                textBoxValues.FocusLost:Connect(function(enterPressed)
                    if not autoexec then
                        if enterPressed then
                            callback(textBoxValues.Text)
                        end
                    else
                        callback(textBoxValues.Text)
                    end
                end)

                local TextboxFunctions = {}
                function TextboxFunctions:Input(new)
                    new = new or textBoxValues.Text
                    textBoxValues = new
                    return TextboxFunctions
                end
                --
                function TextboxFunctions:Fire()
                    callback(textBoxValues.Text)
                    return TextboxFunctions
                end
                --
                function TextboxFunctions:SetFunction(new)
                    new = new or callback
                    callback = new
                    return TextboxFunctions
                end
                --
                function TextboxFunctions:Text(new)
                    new = new or textboxLabel.Text
                    textboxLabel.Text = new
                    return TextboxFunctions
                end
                --
                function TextboxFunctions:Hide()
                    textboxFrame.Visible = false
                    return TextboxFunctions
                end
                --
                function TextboxFunctions:Show()
                    textboxFrame.Visible = true
                    return TextboxFunctions
                end
                --
                function TextboxFunctions:Remove()
                    textboxFrame:Destroy()
                    return TextboxFunctions
                end
                --
                function TextboxFunctions:Place(new)
                    new = new or textBoxValues.PlaceholderText
                    textBoxValues.PlaceholderText = new
                    return TextboxFunctions
                end
                return TextboxFunctions
            elseif type == "large" then
                local textboxFrame = Instance.new("Frame")
                local textboxFolder = Instance.new("Folder")
                local textboxFolderLayout = Instance.new("UIListLayout")
                local textbox = Instance.new("Frame")
                local textboxLayout = Instance.new("UIListLayout")
                local textboxStraint = Instance.new("UISizeConstraint")
                local textboxCorner = Instance.new("UICorner")
                local textboxTwo = Instance.new("Frame")
                local textboxTwoStraint = Instance.new("UISizeConstraint")
                local textboxTwoGradient = Instance.new("UIGradient")
                local textboxTwoCorner = Instance.new("UICorner")
                local textBoxValues = Instance.new("TextBox")
                local textBoxValuesStraint = Instance.new("UISizeConstraint")
                local textBoxValuesPadding = Instance.new("UIPadding")
                local textboxTwoLayout = Instance.new("UIListLayout")
                local textboxLabel = Instance.new("TextLabel")
                local textboxPadding = Instance.new("UIPadding")

                textboxFrame.Name = "textboxFrame"
                textboxFrame.Parent = page
                textboxFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                textboxFrame.BackgroundTransparency = 1.000
                textboxFrame.ClipsDescendants = true
                textboxFrame.Position = UDim2.new(0.00499999989, 0, 0.268786132, 0)
                textboxFrame.Size = UDim2.new(0, 396, 0, 142)

                textboxFolder.Name = "textboxFolder"
                textboxFolder.Parent = textboxFrame

                textboxFolderLayout.Name = "textboxFolderLayout"
                textboxFolderLayout.Parent = textboxFolder
                textboxFolderLayout.FillDirection = Enum.FillDirection.Horizontal
                textboxFolderLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                textboxFolderLayout.SortOrder = Enum.SortOrder.LayoutOrder
                textboxFolderLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
                textboxFolderLayout.Padding = UDim.new(0, 4)

                textbox.Name = "textbox"
                textbox.Parent = textboxFolder
                textbox.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
                textbox.Position = UDim2.new(0, 0, 0.169014081, 0)
                textbox.Size = UDim2.new(0, 396, 0, 118)

                textboxLayout.Name = "textboxLayout"
                textboxLayout.Parent = textbox
                textboxLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                textboxLayout.SortOrder = Enum.SortOrder.LayoutOrder
                textboxLayout.VerticalAlignment = Enum.VerticalAlignment.Center

                textboxStraint.Name = "textboxStraint"
                textboxStraint.Parent = textbox
                textboxStraint.MaxSize = Vector2.new(396, 118)
                textboxStraint.MinSize = Vector2.new(396, 118)

                textboxCorner.CornerRadius = UDim.new(0, 2)
                textboxCorner.Name = "textboxCorner"
                textboxCorner.Parent = textbox

                textboxTwo.Name = "textboxTwo"
                textboxTwo.Parent = textbox
                textboxTwo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                textboxTwo.Size = UDim2.new(0, 394, 0, 114)

                textboxTwoStraint.Name = "textboxTwoStraint"
                textboxTwoStraint.Parent = textboxTwo
                textboxTwoStraint.MaxSize = Vector2.new(394, 116)
                textboxTwoStraint.MinSize = Vector2.new(394, 116)

                textboxTwoGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(34, 34, 34)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(28, 28, 28))}
                textboxTwoGradient.Rotation = 90
                textboxTwoGradient.Name = "textboxTwoGradient"
                textboxTwoGradient.Parent = textboxTwo

                textboxTwoCorner.CornerRadius = UDim.new(0, 2)
                textboxTwoCorner.Name = "textboxTwoCorner"
                textboxTwoCorner.Parent = textboxTwo

                textBoxValues.Name = "textBoxValues"
                textBoxValues.Parent = textboxTwo
                textBoxValues.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                textBoxValues.BackgroundTransparency = 1.000
                textBoxValues.ClipsDescendants = true
                textBoxValues.Size = UDim2.new(0, 394, 0, 114)
                textBoxValues.Font = Enum.Font.Code
                textBoxValues.PlaceholderColor3 = Color3.fromRGB(140, 140, 140)
                textBoxValues.PlaceholderText = place
                textBoxValues.Text = default
                textBoxValues.TextColor3 = Color3.fromRGB(190, 190, 190)
                textBoxValues.TextSize = 14.000
                textBoxValues.TextWrapped = true
                textBoxValues.TextXAlignment = Enum.TextXAlignment.Left
                textBoxValues.TextYAlignment = Enum.TextYAlignment.Top

                textBoxValuesStraint.Name = "textBoxValuesStraint"
                textBoxValuesStraint.Parent = textBoxValues
                textBoxValuesStraint.MaxSize = Vector2.new(394, 116)
                textBoxValuesStraint.MinSize = Vector2.new(394, 116)

                textBoxValuesPadding.Name = "textBoxValuesPadding"
                textBoxValuesPadding.Parent = textBoxValues
                textBoxValuesPadding.PaddingBottom = UDim.new(0, 2)
                textBoxValuesPadding.PaddingLeft = UDim.new(0, 2)
                textBoxValuesPadding.PaddingRight = UDim.new(0, 2)
                textBoxValuesPadding.PaddingTop = UDim.new(0, 2)

                textboxTwoLayout.Name = "textboxTwoLayout"
                textboxTwoLayout.Parent = textboxTwo
                textboxTwoLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                textboxTwoLayout.SortOrder = Enum.SortOrder.LayoutOrder
                textboxTwoLayout.VerticalAlignment = Enum.VerticalAlignment.Center

                textboxLabel.Name = "textboxLabel"
                textboxLabel.Parent = textboxFrame
                textboxLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                textboxLabel.BackgroundTransparency = 1.000
                textboxLabel.Size = UDim2.new(0, 396, 0, 24)
                textboxLabel.Font = Enum.Font.Code
                textboxLabel.Text = text
                textboxLabel.TextColor3 = Color3.fromRGB(190, 190, 190)
                textboxLabel.TextSize = 14.000
                textboxLabel.TextWrapped = true
                textboxLabel.TextXAlignment = Enum.TextXAlignment.Left
                textboxLabel.RichText = true

                textboxPadding.Name = "textboxPadding"
                textboxPadding.Parent = textboxLabel
                textboxPadding.PaddingBottom = UDim.new(0, 6)
                textboxPadding.PaddingLeft = UDim.new(0, 2)
                textboxPadding.PaddingRight = UDim.new(0, 6)
                textboxPadding.PaddingTop = UDim.new(0, 6)

                CreateTween("TextBox", 0.07)

                textBoxValues:GetPropertyChangedSignal("Text"):Connect(function()
                    if format == "numbers" then
                        textBoxValues.Text = textBoxValues.Text:gsub("%D+", "")
                    end
                end)

                textBoxValues:GetPropertyChangedSignal("Text"):Connect(function()
                    if format == "lower" then
                        textBoxValues.Text = textBoxValues.Text:lower()
                    end
                end)

                textBoxValues:GetPropertyChangedSignal("Text"):Connect(function()
                    if format == "upper" then
                        textBoxValues.Text = textBoxValues.Text:upper()
                    end
                end)

                textBoxValues:GetPropertyChangedSignal("Text"):Connect(function()
                    if format == "all" or format == "" then
                        textBoxValues.Text = textBoxValues.Text
                    end
                end)

                textboxFrame.MouseEnter:Connect(function()
                    TweenService:Create(textboxLabel, TweenTable["TextBox"], {TextColor3 = Color3.fromRGB(210, 210, 210)}):Play()
                end)

                textboxFrame.MouseLeave:Connect(function()
                    TweenService:Create(textboxLabel, TweenTable["TextBox"], {TextColor3 = Color3.fromRGB(190, 190, 190)}):Play()
                end)

                textBoxValues.Focused:Connect(function()
                    TweenService:Create(textbox, TweenTable["TextBox"], {BackgroundColor3 = Color3.fromRGB(159, 115, 255)}):Play()
                end)

                textBoxValues.FocusLost:Connect(function()
                    TweenService:Create(textbox, TweenTable["TextBox"], {BackgroundColor3 = Color3.fromRGB(60, 60, 60)}):Play()
                end)

                textBoxValues.FocusLost:Connect(function(enterPressed)
                    if not autoexec then
                        if enterPressed then
                            callback(textBoxValues.Text)
                        end
                    else
                        callback(textBoxValues.Text)
                    end
                end)

                UpdatePageSize()

                local TextboxFunctions = {}
                function TextboxFunctions:Input(new)
                    new = new or textBoxValues.Text
                    textBoxValues = new
                    return TextboxFunctions
                end
                --
                function TextboxFunctions:Fire()
                    callback(textBoxValues.Text)
                    return TextboxFunctions
                end
                --
                function TextboxFunctions:SetFunction(new)
                    new = new or callback
                    callback = new
                    return TextboxFunctions
                end
                --
                function TextboxFunctions:Text(new)
                    new = new or textboxLabel.Text
                    textboxLabel.Text = new
                    return TextboxFunctions
                end
                --
                function TextboxFunctions:Hide()
                    textboxFrame.Visible = false
                    return TextboxFunctions
                end
                --
                function TextboxFunctions:Show()
                    textboxFrame.Visible = true
                    return TextboxFunctions
                end
                --
                function TextboxFunctions:Remove()
                    textboxFrame:Destroy()
                    return TextboxFunctions
                end
                --
                function TextboxFunctions:Place(new)
                    new = new or textBoxValues.PlaceholderText
                    textBoxValues.PlaceholderText = new
                    return TextboxFunctions
                end
                return TextboxFunctions
            end
        end
        --
        function Components:NewSelector(text, default, list, callback)
            text = text or "selector"
            default = default or ". . ."
            list = list or {}
            callback = callback or function() end

            local selectorFrame = Instance.new("Frame")
            local selectorLabel = Instance.new("TextLabel")
            local selectorLabelPadding = Instance.new("UIPadding")
            local selectorFrameLayout = Instance.new("UIListLayout")
            local selector = Instance.new("TextButton")
            local selectorCorner = Instance.new("UICorner")
            local selectorLayout = Instance.new("UIListLayout")
            local selectorPadding = Instance.new("UIPadding")
            local selectorTwo = Instance.new("Frame")
            local selectorText = Instance.new("TextLabel")
            local textBoxValuesPadding = Instance.new("UIPadding")
            local Frame = Instance.new("Frame")
            local selectorTwoLayout = Instance.new("UIListLayout")
            local selectorTwoGradient = Instance.new("UIGradient")
            local selectorTwoCorner = Instance.new("UICorner")
            local selectorPadding_2 = Instance.new("UIPadding")
            local selectorContainer = Instance.new("Frame")
            local selectorTwoLayout_2 = Instance.new("UIListLayout")
            
            selectorFrame.Name = "selectorFrame"
            selectorFrame.Parent = page
            selectorFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            selectorFrame.BackgroundTransparency = 1.000
            selectorFrame.ClipsDescendants = true
            selectorFrame.Position = UDim2.new(0.00499999989, 0, 0.0895953774, 0)
            selectorFrame.Size = UDim2.new(0, 396, 0, 46)

            
            selectorLabel.Name = "selectorLabel"
            selectorLabel.Parent = selectorFrame
            selectorLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            selectorLabel.BackgroundTransparency = 1.000
            selectorLabel.Size = UDim2.new(0, 396, 0, 24)
            selectorLabel.Font = Enum.Font.Code
            selectorLabel.Text = text
            selectorLabel.TextColor3 = Color3.fromRGB(190, 190, 190)
            selectorLabel.TextSize = 14.000
            selectorLabel.TextWrapped = true
            selectorLabel.TextXAlignment = Enum.TextXAlignment.Left
            selectorLabel.RichText = true
            
            selectorLabelPadding.Name = "selectorLabelPadding"
            selectorLabelPadding.Parent = selectorLabel
            selectorLabelPadding.PaddingBottom = UDim.new(0, 6)
            selectorLabelPadding.PaddingLeft = UDim.new(0, 2)
            selectorLabelPadding.PaddingRight = UDim.new(0, 6)
            selectorLabelPadding.PaddingTop = UDim.new(0, 6)
            
            selectorFrameLayout.Name = "selectorFrameLayout"
            selectorFrameLayout.Parent = selectorFrame
            selectorFrameLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
            selectorFrameLayout.SortOrder = Enum.SortOrder.LayoutOrder
            
            selector.Name = "selector"
            selector.Parent = selectorFrame
            selector.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
            selector.ClipsDescendants = true
            selector.Position = UDim2.new(0, 0, 0.0926640928, 0)
            selector.Size = UDim2.new(0, 396, 0, 21)
            selector.AutoButtonColor = false
            selector.Font = Enum.Font.SourceSans
            selector.Text = ""
            selector.TextColor3 = Color3.fromRGB(0, 0, 0)
            selector.TextSize = 14.000
            
            selectorCorner.CornerRadius = UDim.new(0, 2)
            selectorCorner.Name = "selectorCorner"
            selectorCorner.Parent = selector
            
            selectorLayout.Name = "selectorLayout"
            selectorLayout.Parent = selector
            selectorLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
            selectorLayout.SortOrder = Enum.SortOrder.LayoutOrder
            
            selectorPadding.Name = "selectorPadding"
            selectorPadding.Parent = selector
            selectorPadding.PaddingTop = UDim.new(0, 1)
            
            selectorTwo.Name = "selectorTwo"
            selectorTwo.Parent = selector
            selectorTwo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            selectorTwo.ClipsDescendants = true
            selectorTwo.Position = UDim2.new(0.00252525252, 0, 0, 0)
            selectorTwo.Size = UDim2.new(0, 394, 0, 20)
            
            selectorText.Name = "selectorText"
            selectorText.Parent = selectorTwo
            selectorText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            selectorText.BackgroundTransparency = 1.000
            selectorText.Size = UDim2.new(0, 394, 0, 20)
            selectorText.Font = Enum.Font.Code
            selectorText.LineHeight = 1.150
            selectorText.TextColor3 = Color3.fromRGB(160, 160, 160)
            selectorText.TextSize = 14.000
            selectorText.TextXAlignment = Enum.TextXAlignment.Left
            selectorText.Text = default
            
            textBoxValuesPadding.Name = "textBoxValuesPadding"
            textBoxValuesPadding.Parent = selectorText
            textBoxValuesPadding.PaddingBottom = UDim.new(0, 6)
            textBoxValuesPadding.PaddingLeft = UDim.new(0, 6)
            textBoxValuesPadding.PaddingRight = UDim.new(0, 6)
            textBoxValuesPadding.PaddingTop = UDim.new(0, 6)
            
            Frame.Parent = selectorText
            Frame.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
            Frame.BorderSizePixel = 0
            Frame.Position = UDim2.new(-0.008, 0, 1.78, 0)
            Frame.Size = UDim2.new(0, 388, 0, 1)
            
            selectorTwoLayout.Name = "selectorTwoLayout"
            selectorTwoLayout.Parent = selectorTwo
            selectorTwoLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
            selectorTwoLayout.SortOrder = Enum.SortOrder.LayoutOrder
            
            selectorTwoGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(34, 34, 34)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(28, 28, 28))}
            selectorTwoGradient.Rotation = 90
            selectorTwoGradient.Name = "selectorTwoGradient"
            selectorTwoGradient.Parent = selectorTwo
            
            selectorTwoCorner.CornerRadius = UDim.new(0, 2)
            selectorTwoCorner.Name = "selectorTwoCorner"
            selectorTwoCorner.Parent = selectorTwo
            
            selectorPadding_2.Name = "selectorPadding"
            selectorPadding_2.Parent = selectorTwo
            selectorPadding_2.PaddingTop = UDim.new(0, 1)
            
            selectorContainer.Name = "selectorContainer"
            selectorContainer.Parent = selectorTwo
            selectorContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            selectorContainer.BackgroundTransparency = 1.000
            selectorContainer.Size = UDim2.new(0, 394, 0, 20)
        
            selectorTwoLayout_2.Name = "selectorTwoLayout"
            selectorTwoLayout_2.Parent = selectorContainer
            selectorTwoLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
            selectorTwoLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

            CreateTween("selector", 0.08)

            selectorContainer.ChildAdded:Connect(UpdatePageSize)
            selectorContainer.ChildAdded:Connect(UpdatePageSize)

            UpdatePageSize()

            local Amount = #list
            local Val = (Amount * 20)
            function checkSizes()
                Amount = #list
                Val = (Amount * 20) + 20
            end
            for i,v in next, list do
                local optionButton = Instance.new("TextButton")

                optionButton.Name = "optionButton"
                optionButton.Parent = selectorContainer
                optionButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                optionButton.BackgroundTransparency = 1.000
                optionButton.Size = UDim2.new(0, 394, 0, 20)
                optionButton.AutoButtonColor = false
                optionButton.Font = Enum.Font.Code
                optionButton.Text = v
                optionButton.TextColor3 = Color3.fromRGB(160, 160, 160)
                optionButton.TextSize = 14.000
                if optionButton.Text == default then
                    optionButton.TextColor3 = Color3.fromRGB(159, 115, 255)
                    callback(selectorText.Text)
                end

                optionButton.MouseButton1Click:Connect(function()
                    for z,x in next, selectorContainer:GetChildren() do
                        if x:IsA("TextButton") then
                            TweenService:Create(x, TweenTable["selector"], {TextColor3 = Color3.fromRGB(160, 160, 160)}):Play()
                        end
                    end
                    TweenService:Create(optionButton, TweenTable["selector"], {TextColor3 = Color3.fromRGB(159, 115, 255)}):Play()
                    selectorText.Text = optionButton.Text
                    callback(optionButton.Text)
                end)

                selectorContainer.Size = UDim2.new(0, 394, 0, Val)
                selectorTwo.Size = UDim2.new(0, 394, 0, Val)
                selector.Size = UDim2.new(0, 396, 0, Val + 2)
                selectorFrame.Size = UDim2.new(0, 396, 0, Val + 26)

                UpdatePageSize()
                checkSizes()
            end

            UpdatePageSize()
            local SelectorFunctions = {}
            local AddAmount = 0
            function SelectorFunctions:AddOption(new, callback_f)
                new = new or "option"
                list[new] = new

                local optionButton = Instance.new("TextButton")

                AddAmount = AddAmount + 20

                optionButton.Name = "optionButton"
                optionButton.Parent = selectorContainer
                optionButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                optionButton.BackgroundTransparency = 1.000
                optionButton.Size = UDim2.new(0, 394, 0, 20)
                optionButton.AutoButtonColor = false
                optionButton.Font = Enum.Font.Code
                optionButton.Text = new
                optionButton.TextColor3 = Color3.fromRGB(140, 140, 140)
                optionButton.TextSize = 14.000
                if optionButton.Text == default then
                    optionButton.TextColor3 = Color3.fromRGB(159, 115, 255)
                    callback(selectorText.Text)
                end

                optionButton.MouseButton1Click:Connect(function()
                    for z,x in next, selectorContainer:GetChildren() do
                        if x:IsA("TextButton") then
                            TweenService:Create(x, TweenTable["selector"], {TextColor3 = Color3.fromRGB(140, 140, 140)}):Play()
                        end
                    end
                    TweenService:Create(optionButton, TweenTable["selector"], {TextColor3 = Color3.fromRGB(159, 115, 255)}):Play()
                    selectorText.Text = optionButton.Text
                    callback(optionButton.Text)
                end)

                checkSizes()
                selectorContainer.Size = UDim2.new(0, 394, 0, Val + AddAmount)
                selectorTwo.Size = UDim2.new(0, 394, 0, Val + AddAmount)
                selector.Size = UDim2.new(0, 396, 0, (Val + AddAmount) + 2)
                selectorFrame.Size = UDim2.new(0, 396, 0, (Val + AddAmount) + 26)

                UpdatePageSize()
                checkSizes()
                return SelectorFunctions
            end
            --
            local RemoveAmount = 0
            function SelectorFunctions:RemoveOption(option)
                list[option] = nil

                RemoveAmount = RemoveAmount + 20
                AddAmount = AddAmount - 20

                for i,v in pairs(selectorContainer:GetDescendants()) do
                    if v:IsA("TextButton") then
                        if v.Text == option then
                            v:Destroy()
                            selectorContainer.Size = UDim2.new(0, 394, 0, Val - RemoveAmount)
                            selectorTwo.Size = UDim2.new(0, 394, 0, Val - RemoveAmount)
                            selector.Size = UDim2.new(0, 396, 0, (Val - RemoveAmount) + 2)
                            selectorFrame.Size = UDim2.new(0, 396, 0, (Val + 6) - 20)
                        end
                    end
                end

                if selectorText.Text == option then
                    selectorText.Text = ". . ."
                end

                UpdatePageSize()
                checkSizes()
                return SelectorFunctions
            end
            --
            function SelectorFunctions:SetFunction(new)
                new = new or callback
                callback = new
                return SelectorFunctions
            end
            --
            function SelectorFunctions:Text(new)
                new = new or selectorLabel.Text
                selectorLabel.Text = new
                return SelectorFunctions
            end
            --
            function SelectorFunctions:Hide()
                selectorFrame.Visible = false
                return SelectorFunctions
            end
            --
            function SelectorFunctions:Show()
                selectorFrame.Visible = true
                return SelectorFunctions
            end
            --
            function SelectorFunctions:Remove()
                selectorFrame:Destroy()
                return SelectorFunctions
            end
            return SelectorFunctions
        end
        --
        function Components:NewSlider(text, suffix, compare, compareSign, values, callback)
            text = text or "slider"
            suffix = suffix or ""
            compare = compare or false
            compareSign = compareSign or "/"
            values = values or {
                min = values.min or 0,
                max = values.max or 100,
                default = values.default or 0
            }
            callback = callback or function() end

            values.max = values.max + 1

            local sliderFrame = Instance.new("Frame")
            local sliderFolder = Instance.new("Folder")
            local textboxFolderLayout = Instance.new("UIListLayout")
            local sliderButton = Instance.new("TextButton")
            local sliderButtonCorner = Instance.new("UICorner")
            local sliderBackground = Instance.new("Frame")
            local sliderButtonCorner_2 = Instance.new("UICorner")
            local sliderBackgroundGradient = Instance.new("UIGradient")
            local sliderBackgroundLayout = Instance.new("UIListLayout")
            local sliderIndicator = Instance.new("Frame")
            local sliderIndicatorStraint = Instance.new("UISizeConstraint")
            local sliderIndicatorGradient = Instance.new("UIGradient")
            local sliderIndicatorCorner = Instance.new("UICorner")
            local sliderBackgroundPadding = Instance.new("UIPadding")
            local sliderButtonLayout = Instance.new("UIListLayout")
            local sliderLabel = Instance.new("TextLabel")
            local sliderPadding = Instance.new("UIPadding")
            local sliderValue = Instance.new("TextLabel")

            sliderFrame.Name = "sliderFrame"
            sliderFrame.Parent = page
            sliderFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            sliderFrame.BackgroundTransparency = 1.000
            sliderFrame.ClipsDescendants = true
            sliderFrame.Position = UDim2.new(0.00499999989, 0, 0.667630076, 0)
            sliderFrame.Size = UDim2.new(0, 396, 0, 40)

            sliderFolder.Name = "sliderFolder"
            sliderFolder.Parent = sliderFrame

            textboxFolderLayout.Name = "textboxFolderLayout"
            textboxFolderLayout.Parent = sliderFolder
            textboxFolderLayout.FillDirection = Enum.FillDirection.Horizontal
            textboxFolderLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
            textboxFolderLayout.SortOrder = Enum.SortOrder.LayoutOrder
            textboxFolderLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
            textboxFolderLayout.Padding = UDim.new(0, 4)

            sliderButton.Name = "sliderButton"
            sliderButton.Parent = sliderFolder
            sliderButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
            sliderButton.Position = UDim2.new(0.348484844, 0, 0.600000024, 0)
            sliderButton.Size = UDim2.new(0, 396, 0, 16)
            sliderButton.AutoButtonColor = false
            sliderButton.Font = Enum.Font.SourceSans
            sliderButton.Text = ""
            sliderButton.TextColor3 = Color3.fromRGB(0, 0, 0)
            sliderButton.TextSize = 14.000

            sliderButtonCorner.CornerRadius = UDim.new(0, 2)
            sliderButtonCorner.Name = "sliderButtonCorner"
            sliderButtonCorner.Parent = sliderButton

            sliderBackground.Name = "sliderBackground"
            sliderBackground.Parent = sliderButton
            sliderBackground.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            sliderBackground.Size = UDim2.new(0, 394, 0, 14)
            sliderBackground.ClipsDescendants = true

            sliderButtonCorner_2.CornerRadius = UDim.new(0, 2)
            sliderButtonCorner_2.Name = "sliderButtonCorner"
            sliderButtonCorner_2.Parent = sliderBackground

            sliderBackgroundGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(34, 34, 34)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(28, 28, 28))}
            sliderBackgroundGradient.Rotation = 90
            sliderBackgroundGradient.Name = "sliderBackgroundGradient"
            sliderBackgroundGradient.Parent = sliderBackground

            sliderBackgroundLayout.Name = "sliderBackgroundLayout"
            sliderBackgroundLayout.Parent = sliderBackground
            sliderBackgroundLayout.SortOrder = Enum.SortOrder.LayoutOrder
            sliderBackgroundLayout.VerticalAlignment = Enum.VerticalAlignment.Center

            sliderIndicator.Name = "sliderIndicator"
            sliderIndicator.Parent = sliderBackground
            sliderIndicator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            sliderIndicator.BorderSizePixel = 0
            sliderIndicator.Position = UDim2.new(0, 0, -0.100000001, 0)
            sliderIndicator.Size = UDim2.new(0, 0, 0, 12)

            sliderIndicatorStraint.Name = "sliderIndicatorStraint"
            sliderIndicatorStraint.Parent = sliderIndicator
            sliderIndicatorStraint.MaxSize = Vector2.new(392, 12)

            sliderIndicatorGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(159, 115, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(128, 94, 208))}
            sliderIndicatorGradient.Rotation = 90
            sliderIndicatorGradient.Name = "sliderIndicatorGradient"
            sliderIndicatorGradient.Parent = sliderIndicator

            sliderIndicatorCorner.CornerRadius = UDim.new(0, 2)
            sliderIndicatorCorner.Name = "sliderIndicatorCorner"
            sliderIndicatorCorner.Parent = sliderIndicator

            sliderBackgroundPadding.Name = "sliderBackgroundPadding"
            sliderBackgroundPadding.Parent = sliderBackground
            sliderBackgroundPadding.PaddingBottom = UDim.new(0, 2)
            sliderBackgroundPadding.PaddingLeft = UDim.new(0, 1)
            sliderBackgroundPadding.PaddingRight = UDim.new(0, 1)
            sliderBackgroundPadding.PaddingTop = UDim.new(0, 2)

            sliderButtonLayout.Name = "sliderButtonLayout"
            sliderButtonLayout.Parent = sliderButton
            sliderButtonLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
            sliderButtonLayout.SortOrder = Enum.SortOrder.LayoutOrder
            sliderButtonLayout.VerticalAlignment = Enum.VerticalAlignment.Center

            sliderLabel.Name = "sliderLabel"
            sliderLabel.Parent = sliderFrame
            sliderLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            sliderLabel.BackgroundTransparency = 1.000
            sliderLabel.Size = UDim2.new(0, 396, 0, 24)
            sliderLabel.Font = Enum.Font.Code
            sliderLabel.Text = text
            sliderLabel.TextColor3 = Color3.fromRGB(190, 190, 190)
            sliderLabel.TextSize = 14.000
            sliderLabel.TextWrapped = true
            sliderLabel.TextXAlignment = Enum.TextXAlignment.Left
            sliderLabel.RichText = true

            sliderPadding.Name = "sliderPadding"
            sliderPadding.Parent = sliderLabel
            sliderPadding.PaddingBottom = UDim.new(0, 6)
            sliderPadding.PaddingLeft = UDim.new(0, 2)
            sliderPadding.PaddingRight = UDim.new(0, 6)
            sliderPadding.PaddingTop = UDim.new(0, 6)

            sliderValue.Name = "sliderValue"
            sliderValue.Parent = sliderLabel
            sliderValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            sliderValue.BackgroundTransparency = 1.000
            sliderValue.Position = UDim2.new(0.577319562, 0, 0, 0)
            sliderValue.Size = UDim2.new(0, 169, 0, 15)
            sliderValue.Font = Enum.Font.Code
            sliderValue.Text = values.default
            sliderValue.TextColor3 = Color3.fromRGB(140, 140, 140)
            sliderValue.TextSize = 14.000
            sliderValue.TextXAlignment = Enum.TextXAlignment.Right


            local calc1 = values.max - values.min
            local calc2 = values.default - values.min
            local calc3 = calc2 / calc1
            local calc4 = calc3 * sliderBackground.AbsoluteSize.X
            local Calculation = calc4
            sliderIndicator.Size = UDim2.new(0, Calculation, 0, 12)
            sliderValue.Text = values.default

            CreateTween("slider_drag", 0.008)

            local ValueNum = values.default
            local slideText = compare and ValueNum .. compareSign .. tostring(values.max - 1) .. suffix or ValueNum .. suffix
            sliderValue.Text = slideText
            local function UpdateSlider()
                TweenService:Create(sliderIndicator, TweenTable["slider_drag"], {Size = UDim2.new(0, math.clamp(Mouse.X - sliderIndicator.AbsolutePosition.X, 0, sliderBackground.AbsoluteSize.X), 0, 12)}):Play()

                ValueNum = math.floor((((tonumber(values.max) - tonumber(values.min)) / sliderBackground.AbsoluteSize.X) * sliderIndicator.AbsoluteSize.X) + tonumber(values.min)) or 0.00

                local slideText = compare and ValueNum .. compareSign .. tostring(values.max - 1) .. suffix or ValueNum .. suffix

                sliderValue.Text = slideText

                pcall(function()
                    callback(ValueNum)
                end)

                sliderValue.Text = slideText

                moveconnection = Mouse.Move:Connect(function()
                    ValueNum = math.floor((((tonumber(values.max) - tonumber(values.min)) / sliderBackground.AbsoluteSize.X) * sliderIndicator.AbsoluteSize.X) + tonumber(values.min))
                    
                    slideText = compare and ValueNum .. compareSign .. tostring(values.max - 1) .. suffix or ValueNum .. suffix
                    sliderValue.Text = slideText

                    pcall(function()
                        callback(ValueNum)
                    end)

                    TweenService:Create(sliderIndicator, TweenTable["slider_drag"], {Size = UDim2.new(0, math.clamp(Mouse.X - sliderIndicator.AbsolutePosition.X, 0, sliderBackground.AbsoluteSize.X), 0, 12)}):Play()
                    if not UserInputService.WindowFocused then
                        moveconnection:Disconnect()
                    end
                end)

                releaseconnection = UserInputService.InputEnded:Connect(function(Mouse_2)
                    if Mouse_2.UserInputType == Enum.UserInputType.MouseButton1 then
                        ValueNum = math.floor((((tonumber(values.max) - tonumber(values.min)) / sliderBackground.AbsoluteSize.X) * sliderIndicator.AbsoluteSize.X) + tonumber(values.min))
                        
                        slideText = compare and ValueNum .. compareSign .. tostring(values.max - 1) .. suffix or ValueNum .. suffix
                        sliderValue.Text = slideText

                        pcall(function()
                            callback(ValueNum)
                        end)

                        TweenService:Create(sliderIndicator, TweenTable["slider_drag"], {Size = UDim2.new(0, math.clamp(Mouse.X - sliderIndicator.AbsolutePosition.X, 0, sliderBackground.AbsoluteSize.X), 0, 12)}):Play()
                        moveconnection:Disconnect()
                        releaseconnection:Disconnect()
                    end
                end)
            end

            sliderButton.MouseButton1Down:Connect(function()
                UpdateSlider()
            end)

            UpdatePageSize()

            local SliderFunctions = {}
            function SliderFunctions:Value(new)
                local ncalc1 = new - values.min
                local ncalc2 = ncalc1 / calc1
                local ncalc3 = ncalc2 * sliderBackground.AbsoluteSize.X
                local nCalculation = ncalc3
                sliderIndicator.Size = UDim2.new(0, nCalculation, 0, 12)
                slideText = compare and new .. compareSign .. tostring(values.max - 1) .. suffix or new .. suffix
                sliderValue.Text = slideText
                return SliderFunctions
            end
            --
            function SliderFunctions:Max(new)
                new = new or values.max
                values.max = new + 1
                slideText = compare and ValueNum .. compareSign .. tostring(values.max - 1) .. suffix or ValueNum .. suffix
                return SliderFunctions
            end
            --
            function SliderFunctions:Min(new)
                new = new or values.min
                values.min = new
                slideText = compare and new .. compareSign .. tostring(values.max - 1) .. suffix or ValueNum .. suffix
                TweenService:Create(sliderIndicator, TweenTable["slider_drag"], {Size = UDim2.new(0, math.clamp(Mouse.X - sliderIndicator.AbsolutePosition.X, 0, sliderBackground.AbsoluteSize.X), 0, 12)}):Play()
                return SliderFunctions
            end
            --
            function SliderFunctions:SetFunction(new)
                new = new or callback
                callback = new
                return SliderFunctions
            end
            --
            function SliderFunctions:Text(new)
                new = new or sliderLabel.Text
                sliderLabel.Text = new
                return SliderFunctions
            end
            --
            function SliderFunctions:Hide()
                sliderFrame.Visible = false
                return SliderFunctions
            end
            --
            function SliderFunctions:Show()
                sliderFrame.Visible = true
                return SliderFunctions
            end
            --
            function SliderFunctions:Remove()
                sliderFrame:Destroy()
                return SliderFunctions
            end
            return SliderFunctions
        end
        --
        function Components:NewSeperator()
            local sectionFrame = Instance.new("Frame")
            local sectionLayout = Instance.new("UIListLayout")
            local rightBar = Instance.new("Frame")

            sectionFrame.Name = "sectionFrame"
            sectionFrame.Parent = page
            sectionFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            sectionFrame.BackgroundTransparency = 1.000
            sectionFrame.ClipsDescendants = true
            sectionFrame.Position = UDim2.new(0.00499999989, 0, 0.361271679, 0)
            sectionFrame.Size = UDim2.new(0, 396, 0, 12)

            sectionLayout.Name = "sectionLayout"
            sectionLayout.Parent = sectionFrame
            sectionLayout.FillDirection = Enum.FillDirection.Horizontal
            sectionLayout.SortOrder = Enum.SortOrder.LayoutOrder
            sectionLayout.VerticalAlignment = Enum.VerticalAlignment.Center
            sectionLayout.Padding = UDim.new(0, 4)

            rightBar.Name = "rightBar"
            rightBar.Parent = sectionFrame
            rightBar.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
            rightBar.BorderSizePixel = 0
            rightBar.Position = UDim2.new(0.308080822, 0, 0.479166657, 0)
            rightBar.Size = UDim2.new(0, 403, 0, 1)

            UpdatePageSize()

            local SeperatorFunctions = {}
            function SeperatorFunctions:Hide()
                sectionFrame.Visible = false
                return SeperatorFunctions
            end
            --
            function SeperatorFunctions:Show()
                sectionFrame.Visible = true
                return SeperatorFunctions
            end
            --
            function SeperatorFunctions:Remove()
                sectionFrame:Destroy()
                return SeperatorFunctions
            end
            return SeperatorFunctions
        end
        --
        function Components:Open()
            TabLibrary.CurrentTab = title
            for i,v in pairs(container:GetChildren()) do 
                if v:IsA("ScrollingFrame") then
                    v.Visible = false
                end
            end
            page.Visible = true

            for i,v in pairs(tabButtons:GetChildren()) do
                if v:IsA("TextButton") then
                    TweenService:Create(v, TweenTable["tab_text_colour"], {TextColor3 = Color3.fromRGB(170, 170, 170)}):Play()
                end
            end
            TweenService:Create(tabButton, TweenTable["tab_text_colour"], {TextColor3 = Color3.fromRGB(159, 115, 255)}):Play()

            return Components
        end
        --
        function Components:Remove()
            tabButton:Destroy()
            page:Destroy()

            return Components
        end
        --
        function Components:Hide()
            tabButton.Visible = false
            page.Visible = false

            return Components
        end
        --
        function Components:Show()
            tabButton.Visible = true

            return Components
        end
        --
        function Components:Text(text)
            text = text or "new text"
            tabButton.Text = text

            return Components
        end
        return Components
    end
    --
    function TabLibrary:Remove()
        screen:Destroy()

        return TabLibrary
    end
    --
    function TabLibrary:Text(text)
        text = text or "new text"
        headerLabel.Text = text

        return TabLibrary
    end
    --
    function TabLibrary:UpdateKeybind(new)
        new = new or key
        key = new
        return TabLibrary
    end
    return TabLibrary
end
return library

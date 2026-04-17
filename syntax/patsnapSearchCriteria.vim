" Vim syntax file
" Language:	Patsnap Search Criteria
" Maintainer:	Lin Kun <ssfjhh at gmail.com>
" Last Change:	2026 Apr 17

if exists("b:current_syntax")
    finish
endif

syntax clear
syntax case     ignore       " 忽略大小写

set cindent shiftwidth=8     " 自动缩进8空格
set tabstop=8                " 设置tab键的宽度

" 布尔运算符和范围关键字
syntax keyword scBoolean AND OR NOT GAND TO

" 邻近运算符: $Wn, $PREn, $WS, $SEN, $PARA
" 频率运算符: $FREQn
syntax match scConnector '\c\$\(W\d\{1,2}\|PRE\d\{1,2}\|WS\|SEN\|PARA\|FREQ\d\{1,2}\)'

" TREE@ 公司树运算符
syntax match scTreeOp '\cTREE@'

" --- 字段名（后跟 : 分隔符）---

" 号码 & 文本字段
syntax match scKEY '\c\<\(PN\|APNO\|PRNO\|KD\|PCT_PN\|PCT_APNO\|FAM_ID\|IFAM_ID\|EFAM_ID\|TTL\|ABST\|CLMS\|ICLMS\|DESC\|DESC_F\|DESC_B\|DESC_S\|DESC_D\|DESC_E\|PROBLEM_SUM\|METHOD_SUM\|BENEFIT_SUM\|PROBLEM_PHR\|BENEFIT_PHR\|TA\|TAC\|TACD\|MAINF\)\>:'

" 英文机翻字段
syntax match scKEY '\c\<\(TTL_ENTRANS\|ABST_ENTRANS\|CLMS_ENTRANS\|ICLMS_ENTRANS\|DESC_ENTRANS\)\>:'

" 中文机翻字段
syntax match scKEY '\c\<\(TTL_CNTRANS\|ABST_CNTRANS\|CLMS_CNTRANS\|ICLMS_CNTRANS\|DESC_CNTRANS\)\>:'

" 原文和翻译字段
syntax match scKEY '\c\<\(TTL_ALL\|ABST_ALL\|CLMS_ALL\|ICLMS_ALL\|DESC_ALL\|TA_ALL\|TAC_ALL\|TACD_ALL\|MAINF_ALL\)\>:'

" 公司 & 人字段
syntax match scKEY '\c\<\(ALL_AN\|AN\|ANC\|ANS\|ANS_EXACT\|ANCS\|ANCS_EXACT\|AN_HIST\|GNAME\|AN_ADD\|AN_COUNTRY\|AN_PROVINCE\|AN_CITY\|AN_DISTRICT\|ANC_ADD\|ANC_COUNTRY\|ANC_PROVINCE\|ANC_CITY\|ANC_DISTRICT\|F_AN\|F_ANC\|ANS_TYPE\|ANCS_TYPE\)\>:'
syntax match scKEY '\c\<\(IN\|INC\|IN_EXACT\|IN_ADDRESS\|F_IN\|AT\|AT_C\|ATC\|ATCS\|ATCC\|ATC_VALUE\|PE\|AE\|AUTHORITY\|PRIORITY_COUNTRY\|EPDS\|AN_EN\)\>:'
syntax match scKEY '\c\<\(BI_USCC\|BI_RN\|BI_ADD\|BI_ET\|BI_ED\|BI_RS\|LC_CODE\)\>:'

" 日期字段
syntax match scKEY '\c\<\(APD\|APD_Y\|APD_YM\|PBD\|F_PBD\|PBD_Y\|PBD_YM\|EFAM_EPBD\|EFAM_EPBY\|EFAM_EPBYM\|EFAM_EPRD\|ISD\|EXPD\|EXAMINE_DATE\|PCTENTRY_DATE\|LEGAL_STATUS_DATE\|PRIORITY_DATE\|E_PRIORITY_DATE\|EXDT\)\>:'

" 分类号字段
syntax match scKEY '\c\<\(CLASS\|IPC\|IPC_SECTION\|IPC_CLASS\|IPC_SUB_CLASS\|IPC_GROUP\|IPC_SUB_GROUP\|MIPC\|MIPC_SECTION\|MIPC_CLASS\|MIPC_SUB_CLASS\|IPC_CPC\|CPC\|CPC_ALL\|CPC_SECTION\|CPC_CLASS\|CPC_SUB_CLASS\|CPC_GROUP\|CPC_SUB_GROUP\|MCPC\)\>:'
syntax match scKEY '\c\<\(GBC\|GBC_SECTION\|LOC\|UPC\|FI\|FTERM\|IPC_LOW\|MIPC_LOW\|CPC_LOW\|UPC_LOW\|FI_LOW\|FTERM_LOW\|ADC\|TTC\|SEIC\|SEIC_ALL\)\>:'

" 引用 & 同族字段
syntax match scKEY '\c\<\(B_CITES\|F_CITES\|BF_CITES\|B_CITES_COUNT\|F_CITES_COUNT\|F_CITES_ANC\|B_CITES_ANC\|CITE_CATEGORY\|FAM\|IFAM\|EFAM\|FAM_COUNT\|IFAM_COUNT\|EFAM_COUNT\|EFAM_COUNTRY\|EFAM_EPB_COUNTRY\|FAM_COUNTRY\|FAM_COUNTRY_COUNT\|IFAM_COUNTRY_COUNT\|EFAM_COUNTRY_COUNT\|EPDS_COUNT\)\>:'

" 专利状态 & 质量字段
syntax match scKEY '\c\<\(LEGAL_STATUS\|LEGAL_EVENT\|SIMPLE_LEGAL_STATUS\|EFAM_STATUS\|UP_STATUS\|ENTRY_COUNTRY_LS\|ENTRY_COUNTRY_SLS\|EPDS_LS\|EPDS_SLS\|PV\|PAGE_COUNT\|CLAIM_COUNT\|FCLMS_WORDCOUNT\|AN_COUNT\|ANC_COUNT\|IN_COUNT\|CPC_COUNT\|IPC_COUNT\)\>:'
syntax match scKEY '\c\<\(GOV\|EXAMINE_PERIOD\|PATENT_TYPE\|PCTENTRY_TYPE\|EP_ENTRY\|ENTRY_COUNTRY\|SEP\|SEP_NUMBER\|SEP_TITLE\|SEP_SOURCE\|SEP_PROJECT\|SEP_DECLARANT\|AWARD_NAME\|AWARD_LEVEL\|AWARD_SESSION\|SUB_CASE\|PRIORITY_COUNTRY_COUNT\|PRIORITY_EMPTY\)\>:'

" 诉讼字段
syntax match scKEY '\c\<\(LITIGATION\|CASENO\|COURT\|JUDGE\|CHIEF_JUDGE\|PLAINTIFF\|DEFENDANT\|FILING_DATE\|VERDICT_DATE\|HEARING_DATE\|TRIAL_GRADE\|CASE_NATURE\|CASE_LEVEL\|CASE_REGION\|CASE_TITLE\|CASE_FULL_TEXT\|LIT_CLOSEDT\)\>:'
syntax match scKEY '\c\<\(OUTCOME_JUDGEMENT\|OUTCOME_STATUS\|LITIGATION_COUNT\|CASE_DOC_TYPE\|COURT_GRADE\|VERDICT\|PARTY\|PARTY_AGENT\|PARTY_LAWFIRM\|AMOUNT_PLAINTIFF\|DAMAGES_AMOUNT\|FILING_YEAR\|LITIGATION_PRODUCT\)\>:'

" 许可字段
syntax match scKEY '\c\<\(LICENSE\|LICENSOR\|LICENSEE\|LICNO\|EXCLUSIVITY\|LIC_EFDT\|LICENSE_COUNT\)\>:'

" 权利转移字段
syntax match scKEY '\c\<\(TRANSFER\|TRANSFER_BEFORE\|TRANSFER_AFTER\|TRANS_EFDT\)\>:'

" 复审无效字段
syntax match scKEY '\c\<\(REEXAMINVALID\|RI_APPLICANT\|RIDN\|RIIN\|RIDDT\|RIDTP\|RID\|RIDP\|RIDSM\|RILGS\|RI_FULL_TEXT\|INVALID_COUNT\)\>:'

" 质押字段
syntax match scKEY '\c\<\(PLEDGE\|PLEDGOR\|PLEDGEE\|PLEDGENO\|PLE_EFDT\|PLE_STAGE\|PLEDGE_COUNT\)\>:'

" 工作空间字段
syntax match scKEY '\c\<\(MWS\|CWS\)\>:'

" 企业自定义字段 (CCF_ 前缀)
syntax match scKEY '\c\<CCF_\w\+:'

" IPC/CPC 分类号模式 (如 A61K31/04, H04W72/12)
syntax match scPC '\<\([A-HY]\d\{2}[A-Z]\d\{1,4}/\d\{1,6}\(\([A-Z]\d[A-Z]\d\?\|[A-Z]\d\?\)\|\.\(\d*[A-Z]\|\d\+\)\)\?\|[A-HY]\d\{2}[A-Z]\d\{1,4}/\d{1,6}\?\|[A-HY]\d\{2}[A-Z]\d\{1,4}/\?\|[A-HY]\d\{2}[A-Z]\?\|[A-HY]\)\>'

" UPC 分类号模式 (如 530/388.2)
syntax match scUC '\<\d\+/\d\+\(\.\d\+\)\?\|\d\+/\|\d\+\>'

" 注释 (# 行注释，仅在行首或空白字符后生效，避免与通配符 # 冲突)
syntax match scComment '\(^\|\s\)\zs#.*'

" 引号内字符串
syntax region scString matchgroup=scQuote start=/"/ end=/"/

" 高亮链接
highlight link scBoolean    Keyword
highlight link scConnector  Delimiter
highlight link scTreeOp     Special
highlight link scPC         Number
highlight link scUC         Number
highlight link scKEY        Identifier
highlight link scComment    Comment
highlight link scString     String

highlight scQuote ctermfg=green guifg=green

let b:current_syntax = "patsnapSearchCriteria"

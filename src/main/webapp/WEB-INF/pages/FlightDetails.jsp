<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
  <head>
   <script
           src="https://code.jquery.com/jquery-3.6.1.min.js"
           integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ="
           crossorigin="anonymous">
   </script>
    <style>
      @font-face {
        font-family: 'Atlas';
        src: url('//resource.alaskaair.net/stylesheets/atlas/AtlasGrotesk-Light-Web.eot');
        src: url('//resource.alaskaair.net/stylesheets/atlas/AtlasGrotesk-Light-Web.eot?#iefix') format('embedded-opentype'), url('//resource.alaskaair.net/stylesheets/atlas/AtlasGrotesk-Light-Web.woff') format('woff'), url('//resource.alaskaair.net/stylesheets/atlas/AtlasGrotesk-Light-Web.ttf') format('truetype'), url('//resource.alaskaair.net/stylesheets/atlas/AtlasGrotesk-Light-Web.svg') format('svg');
        font-weight: normal;
        font-style: normal;
      }

      @font-face {
        font-family: 'Atlas';
        src: url('//resource.alaskaair.net/stylesheets/atlas/AtlasGrotesk-Medium-Web.eot');
        src: url('//resource.alaskaair.net/stylesheets/atlas/AtlasGrotesk-Medium-Web.eot?#iefix') format('embedded-opentype'), url('//resource.alaskaair.net/stylesheets/atlas/AtlasGrotesk-Medium-Web.woff') format('woff'), url('//resource.alaskaair.net/stylesheets/atlas/AtlasGrotesk-Medium-Web.ttf') format('truetype'), url('//resource.alaskaair.net/stylesheets/atlas/AtlasGrotesk-Medium-Web.svg') format('svg');
        font-weight: bold;
        font-style: normal;
      }

      .containerx {
        margin: 0 auto;
        width: 980px;
        padding: 0;
        border: 0;
        font-weight: inherit;
        font-style: inherit;
        font-size: 100%;
        font-family: inherit;
        vertical-align: baseline;
        line-height: 1.5;
        font-size: 12px;
        color: #666666;
        line-height: 134%;
        font-family: Arial, Helvetica, sans-serif
      }

      body.popup {
        margin: 10px;
        font: 11px Verdana, Arial, Helvetica, sans-serif;
        background: white
      }

      @media print {
        html, body {
          font-size: 1em !important
        }
      }

      .hidden {
        position: absolute;
        left: 0px;
        top: -500px;
        width: 1px;
        height: 1px;
        overflow: hidden;
        visible: visible !important;
        display: block !important
      }

      .containerx {}

      .containerx * {
        box-sizing: content-box
      }

      .containerx div,
      .containerx span,
      .containerx object,
      .containerx iframe,
      .containerx h1,
      .containerx h2,
      .containerx h3,
      .containerx h4,
      .containerx h5,
      .containerx h6,
      .containerx p,
      .containerx blockquote,
      .containerx pre,
      .containerx a,
      .containerx abbr,
      .containerx acronym,
      .containerx address,
      .containerx code,
      .containerx del,
      .containerx dfn,
      .containerx em,
      .containerx img,
      .containerx q,
      .containerx dl,
      .containerx dt,
      .containerx dd,
      .containerx ol,
      .containerx ul,
      .containerx li,
      .containerx fieldset,
      .containerx form,
      .containerx label,
      .containerx legend,
      .containerx table,
      .containerx caption,
      .containerx tbody,
      .containerx tfoot,
      .containerx thead,
      .containerx tr,
      .containerx th,
      .containerx td {
        margin: 0;
        padding: 0;
        border: 0;
        font-weight: inherit;
        font-style: inherit;
        font-size: 100%;
        font-family: inherit;
        vertical-align: baseline
      }

      .containerx table {
        border-collapse: separate;
        border-spacing: 0
      }

      .containerx caption,
      .containerx th,
      .containerx td {
        text-align: left;
        font-weight: normal
      }

      .containerx table,
      .containerx td,
      .containerx th {
        vertical-align: top
      }

      .containerx blockquote:before,
      .containerx blockquote:after,
      .containerx q:before,
      .containerx q:after {
        content: ""
      }

      .containerx blockquote,
      .containerx q {
        quotes: "" ""
      }

      .containerx a img {
        border: none
      }

      .containerx h1,
      .containerx h2,
      .containerx h3,
      .containerx h4,
      .containerx h5,
      .containerx h6,
      .containerx .siteSectionName {
        font-weight: normal;
        color: #0e2b51;
        font-family: Arial, Helvetica, sans-serif;
        margin-bottom: .83em
      }

      .containerx h1,
      .containerx .siteSectionName {
        font: bold 2em Arial, Helvetica, sans-serif;
        clear: left
      }

      .containerx h2,
      .containerx h1.sc {
        font-size: 1.5em;
        font-weight: bold
      }

      .containerx h3,
      .containerx h2.sc {
        font-size: 1.33em;
        font-weight: bold
      }

      .containerx h4,
      .containerx h3.sc {
        font-size: 1.17em;
        font-weight: bold
      }

      .containerx h4.sc {
        font-size: 1em;
        font-weight: bold
      }

      .containerx h2.gray,
      .containerx h3.gray,
      .containerx h4.gray {
        color: #666666
      }

      .containerx h1 img,
      .containerx h2 img,
      .containerx h3 img,
      .containerx h4 img,
      .containerx h5 img,
      .containerx h6 img {
        margin: 0
      }

      .containerx p {
        margin: 0 0 1.5em;
        font-size: inherit
      }

      .containerx p img.left {
        float: left;
        margin: 1.5em 1.5em 1.5em 0;
        padding: 0
      }

      .containerx p img.right {
        float: right;
        margin: 1.5em 0 1.5em 1.5em
      }

      .containerx a,
      .containerx a:visited {
        color: #0e2b51;
        text-decoration: underline;
        font-family: Arial, Helvetica, sans-serif
      }

      .containerx a:focus,
      .containerx a:hover {
        color: #00567e;
        text-decoration: underline;
        font-family: Arial, Helvetica, sans-serif
      }

      .containerx a.smallLink {
        font-size: .92em
      }

      .containerx input[type='submit']::-moz-focus-inner,
      .containerx input[type='button']::-moz-focus-inner,
      .containerx input[type='image']::-moz-focus-inner {
        border: 0px
      }

      .containerx input[type='submit']:focus,
      .containerx input[type='button']:focus,
      .containerx input[type='image']:focus {
        outline: thin dotted;
        outline-offset: -2px
      }

      .containerx input[type='image']:focus {
        outline-color: white
      }

      .containerx .smallText {
        font-size: .92em
      }

      .containerx .advisoryText {
        color: #54112B;
        background: url(/content/~/media/Images/onSite/icons/advisory) left top no-repeat;
        padding: 10px 0 0 35px;
        min-height: 25px
      }

      .containerx .advisoryTextNoIcon {
        color: #54112B
      }

      .containerx .advisoryTextNoIconBold {
        color: #54112B;
        font-weight: bold
      }

      .containerx .errorText,
      .containerx .red {
        color: #a00
      }

      .containerx .errorTextSummary {
        color: #a00;
        background: url(/content/~/media/Images/onSite/icons/error) left top no-repeat;
        padding: 10px 0 0 35px;
        min-height: 25px;
        margin-bottom: 12px
      }

      .containerx .smallErrorText {
        font-size: .92em;
        color: #a00
      }

      .containerx .subjToGovApproval {
        border: 0;
        cursor: default;
        color: #a00
      }

      .containerx .successTextSummary {
        color: #666666;
        background: url(/content/~/media/Images/onSite/icons/priceguar_stepCheck) left top no-repeat;
        padding: 10px 0 0 35px;
        min-height: 25px;
        margin-bottom: 12px
      }

      .containerx .opacity7 {
        opacity: 0.7;
        filter: alpha(opacity=70);
        -moz-opacity: 0.7;
        -khtml-opacity: 0.7
      }

      .containerx .gray {
        color: #696969
      }

      .containerx blockquote {
        margin: 1.5em;
        color: #666666;
        font-style: italic
      }

      .containerx strong {
        font-weight: bold
      }

      .containerx em,
      .containerx dfn {
        font-style: italic
      }

      .containerx dfn {
        font-weight: bold
      }

      .containerx sup,
      .containerx sub {
        line-height: 0
      }

      .containerx acronym {
        border-bottom: 1px dotted #666666
      }

      .containerx address {
        margin: 0 0 1.5em;
        font-style: italic
      }

      .containerx del {
        color: #666666
      }

      .containerx pre {
        margin: 1.5em 0;
        white-space: pre
      }

      .containerx pre,
      .containerx code,
      .containerx tt {
        font: 1em 'andale mono', 'lucida console', monospace;
        line-height: 1.5
      }

      .containerx ul,
      .containerx ol {
        margin: 0 1.5em 1.5em 1.8em
      }

      .containerx ol {
        list-style-type: decimal
      }

      .containerx dl {
        margin: 0 0 1.5em 0
      }

      .containerx dl dt {
        font-weight: bold
      }

      .containerx dd {
        margin-left: 1.5em
      }

      .containerx ul.spacing,
      .containerx ol.spacing {
        padding-left: 15px
      }

      .containerx ul.spacing li,
      .containerx ol.spacing li {
        margin-bottom: 7px
      }

      .containerx ul.inlineList {
        list-style: none;
        padding: 0px;
        margin: 0px
      }

      .containerx ul.inlineList li {
        display: inline;
        margin: 0px
      }

      .containerx ul.hasSeparator li:before {
        content: " | ";
        margin: 0px 3px 0px 3px
      }

      .containerx ul.hasSeparator li:first-child:before {
        content: none;
        margin: 0px 0px 0px 0px
      }

      .containerx th {
        font-weight: bold
      }

      .containerx th,
      .containerx td,
      .containerx caption {
        padding: 0
      }

      .containerx tr.even td {
        background: #e5ecf9
      }

      .containerx tfoot {
        font-style: italic
      }

      .containerx caption {
        background: #eee
      }

      .containerx table.default {
        border-collapse: collapse;
        border: 1px solid #bcc896;
        color: black;
        background: white
      }

      .containerx table.default td {
        border: 1px solid #bcc896;
        line-height: 1.4em;
        padding: 7px !important;
        text-align: left !important
      }

      .containerx table.default th {
        border: 1px solid #bcc896;
        text-align: left !important;
        font: bold 13px Arial, Helvetica, sans-serif;
        color: #0e2b51;
        background: #d9dfc3;
        padding: 7px !important;
        margin: 20px 0 0;
        vertical-align: middle
      }

      .containerx table.default th td {
        vertical-align: top;
        text-align: left !important;
        padding-left: 7px !important
      }

      .containerx table.default tr.even {
        background: #f1f6e2
      }

      .containerx table.default tr:nth-child(even) {
        background: #f1f6e2
      }

      .containerx table.default th a.smallLink {
        font-weight: normal !important;
        font-size: 10px !important
      }

      .containerx table.noDefault td {
        border: none !important;
        padding: 0 1px !important
      }

      .containerx table.noDefault tr:nth-child(even) {
        background: none !important
      }

      .containerx .ontime {
        background: #006600 url("/content/~/media/Images/onSite/icons/flight-status_icon-check-mark.ashx") no-repeat 10px center;
        color: #FFFFFF;
        font-weight: bold
      }

      .containerx .irregop {
        background: #c85000 url("/content/~/media/Images/onSite/icons/flight-status_icon-clock.ashx") no-repeat 10px center;
        color: #FFFFFF;
        font-weight: bold
      }

      .containerx .cancelled {
        background: #aa0000 url("/content/~/media/Images/onSite/icons/flight-status_icon-cancelled.ashx") no-repeat 10px center;
        color: #FFFFFF;
        font-weight: bold
      }

      .containerx .small {
        font-size: .8em;
        margin-bottom: 1.875em;
        line-height: 1.875em
      }

      .containerx .large {
        font-size: 1.2em;
        line-height: 2.5em;
        margin-bottom: 1.25em
      }

      .containerx .hide {
        display: none
      }

      .containerx .quiet {
        color: #666666
      }

      .containerx .loud {
        color: #000
      }

      .containerx .disabled {
        color: #bbb
      }

      .containerx .disabledBackGround {
        background-color: #bbb
      }

      .containerx .disabledNoBold {
        color: #bbb;
        font-weight: normal;
        cursor: default
      }

      .containerx .highlight {
        background: #ff0
      }

      .containerx .added {
        background: #060;
        color: #fff
      }

      .containerx .removed {
        background: #900;
        color: #fff
      }

      .containerx .bold {
        font-weight: bold
      }

      .containerx .first {
        margin-left: 0 !important;
        padding-left: 0
      }

      .containerx .last {
        margin-right: 0 !important;
        padding-right: 0
      }

      .containerx .top {
        margin-top: 0;
        padding-top: 0
      }

      .containerx .bottom {
        margin-bottom: 0;
        padding-bottom: 0
      }

      .containerx .left {
        float: left
      }

      .containerx .right {
        float: right
      }

      .containerx .nobr {
        white-space: nowrap
      }

      .containerx .q {
        cursor: pointer;
        width: 20px;
        height: 26px;
        background: url("/content/~/media/Images/onSite/backgrounds/global.ashx") right center no-repeat;
        background-position: 0 -154px
      }

      .containerx a.q {
        text-decoration: none
      }

      .containerx .padBottom2 {
        padding-bottom: 2px
      }

      .containerx .inlineBlock {
        display: inline-block
      }

      .containerx .column,
      .containerx div.span-1,
      .containerx div.span-2,
      .containerx div.span-3,
      .containerx div.span-4,
      .containerx div.span-5,
      .containerx div.span-6,
      .containerx div.span-7,
      .containerx div.span-8,
      .containerx div.span-9,
      .containerx div.span-10,
      .containerx div.span-11,
      .containerx div.span-12 {
        float: left;
        margin-right: 20px
      }

      .containerx .last,
      .containerx div.last {
        margin-right: 0
      }

      .containerx .span-1 {
        width: 58px
      }

      .containerx .span-2 {
        width: 136px
      }

      .containerx .span-3 {
        width: 214px
      }

      .containerx .span-4 {
        width: 292px
      }

      .containerx .span-5 {
        width: 370px
      }

      .containerx .span-6 {
        width: 448px
      }

      .containerx .span-7 {
        width: 526px
      }

      .containerx .span-8 {
        width: 604px
      }

      .containerx .span-9 {
        width: 682px
      }

      .containerx .span-10 {
        width: 760px
      }

      .containerx .span-11 {
        width: 838px
      }

      .containerx .span-12 {
        width: 916px;
        margin-right: 0 !important
      }

      .containerx .itin-span {
        width: 680px
      }

      .containerx input.span-1,
      .containerx textarea.span-1,
      .containerx input.span-2,
      .containerx textarea.span-2,
      .containerx input.span-3,
      .containerx textarea.span-3,
      .containerx input.span-4,
      .containerx textarea.span-4,
      .containerx input.span-5,
      .containerx textarea.span-5,
      .containerx input.span-6,
      .containerx textarea.span-6,
      .containerx input.span-7,
      .containerx textarea.span-7,
      .containerx input.span-8,
      .containerx textarea.span-8,
      .containerx input.span-9,
      .containerx textarea.span-9,
      .containerx input.span-10,
      .containerx textarea.span-10,
      .containerx input.span-11,
      .containerx textarea.span-11,
      .containerx input.span-12,
      .containerx textarea.span-12 {
        border-left-width: 1px !important;
        border-right-width: 1px !important;
        padding-left: 5px !important;
        padding-right: 5px !important
      }

      .containerx input.span-1,
      .containerx textarea.span-1 {
        width: 46px !important
      }

      .containerx input.span-2,
      .containerx textarea.span-2 {
        width: 124px !important
      }

      .containerx input.span-3,
      .containerx textarea.span-3 {
        width: 202px !important
      }

      .containerx input.span-4,
      .containerx textarea.span-4 {
        width: 280px !important
      }

      .containerx input.span-5,
      .containerx textarea.span-5 {
        width: 358px !important
      }

      .containerx input.span-6,
      .containerx textarea.span-6 {
        width: 436px !important
      }

      .containerx input.span-7,
      .containerx textarea.span-7 {
        width: 514px !important
      }

      .containerx input.span-8,
      .containerx textarea.span-8 {
        width: 592px !important
      }

      .containerx input.span-9,
      .containerx textarea.span-9 {
        width: 670px !important
      }

      .containerx input.span-10,
      .containerx textarea.span-10 {
        width: 748px !important
      }

      .containerx input.span-11,
      .containerx textarea.span-11 {
        width: 826px !important
      }

      .containerx input.span-12,
      .containerx textarea.span-12 {
        width: 904px !important
      }

      .containerx .append-1 {
        padding-right: 78px
      }

      .containerx .append-2 {
        padding-right: 156px
      }

      .containerx .append-3 {
        padding-right: 234px
      }

      .containerx .append-4 {
        padding-right: 312px
      }

      .containerx .append-5 {
        padding-right: 390px
      }

      .containerx .append-6 {
        padding-right: 468px
      }

      .containerx .append-7 {
        padding-right: 546px
      }

      .containerx .append-8 {
        padding-right: 624px
      }

      .containerx .append-9 {
        padding-right: 702px
      }

      .containerx .append-10 {
        padding-right: 780px
      }

      .containerx .append-11 {
        padding-right: 858px
      }

      .containerx .prepend-1 {
        padding-left: 78px
      }

      .containerx .prepend-2 {
        padding-left: 156px
      }

      .containerx .prepend-3 {
        padding-left: 234px
      }

      .containerx .prepend-4 {
        padding-left: 312px
      }

      .containerx .prepend-5 {
        padding-left: 390px
      }

      .containerx .prepend-6 {
        padding-left: 468px
      }

      .containerx .prepend-7 {
        padding-left: 546px
      }

      .containerx .prepend-8 {
        padding-left: 624px
      }

      .containerx .prepend-9 {
        padding-left: 702px
      }

      .containerx .prepend-10 {
        padding-left: 780px
      }

      .containerx .prepend-11 {
        padding-left: 858px
      }

      .containerx div.border {
        padding-right: 9px;
        margin-right: 10px;
        border-right: 1px solid #eee
      }

      .containerx div.colborder {
        padding-right: 48px;
        margin-right: 49px;
        border-right: 1px solid #eee
      }

      .containerx .prepend-top {
        margin-top: 1.5em
      }

      .containerx .prepend-top-less {
        margin-top: .2em
      }

      .containerx .append-bottom {
        margin-bottom: 1.5em
      }

      .containerx .append-bottom-less {
        margin-bottom: .6em
      }

      .containerx .padding-bottom {
        padding-bottom: .6em
      }

      .containerx .box {
        padding: 1.5em;
        margin-bottom: 1.5em;
        background: #E5ECF9
      }

      .containerx hr {
        background: #ddd;
        color: #ddd;
        clear: both;
        float: none;
        width: 100%;
        margin: 0 0 1.45em;
        border: none;
        height: 1px
      }

      .containerx hr.space {
        background: #fff;
        color: #fff
      }

      .containerx #accessibility,
      .containerx .accessibility,
      .containerx .hidden {
        position: absolute;
        left: 0px;
        top: -500px;
        width: 1px;
        height: 1px;
        overflow: hidden;
        visibility: visible !important;
        display: block !important
      }

      .containerx .hiddenInLink {
        position: absolute !important;
        height: 1px;
        width: 1px;
        overflow: hidden;
        clip: rect(1px 1px 1px 1px);
        clip: rect(1px, 1px, 1px, 1px)
      }

      .containerx #skip a {
        position: absolute;
        left: -10000px;
        top: auto;
        width: 1px;
        height: 1px;
        overflow: hidden
      }

      .containerx #skip a:focus,
      .containerx #skip a:active {
        position: absolute;
        left: 350px;
        width: auto;
        height: auto
      }

      .containerx a.showOnFocus {
        position: absolute;
        left: -10000px;
        top: auto;
        overflow: hidden
      }

      .containerx a.showOnFocus:focus {
        position: static;
        left: auto;
        width: auto;
        height: auto
      }

      .containerx .clearfix:after,
      .containerx .content:after {
        content: "\0020";
        display: block;
        height: 0;
        clear: both;
        visibility: hidden;
        overflow: hidden
      }

      .containerx .clearfix,
      .containerx .content {
        display: block
      }

      .containerx .clear {
        clear: both
      }

      .containerx label {
        font-weight: bold;
        color: #666666;
        cursor: pointer
      }

      .containerx fieldset {
        padding: 1.4em;
        margin: 0 0 1.5em 0;
        border: 1px solid #ccc
      }

      .containerx legend {
        font-weight: bold;
        font-size: 1.2em
      }

      .containerx .labelAlignRight {
        text-align: right;
        margin: 2px 4px 0 0;
        margin-right: 4px
      }

      .containerx .labelAlignRightTop {
        text-align: right;
        margin: 0px 4px 0 0;
        margin-right: 4px
      }

      .containerx .labelNoBold {
        color: #666666;
        cursor: pointer;
        font-weight: normal
      }

      .containerx .labelBold {
        color: #666666;
        font-weight: bold
      }

      .containerx input[type="text"],
      .containerx input[type="password"] {
        padding-left: 3px;
        color: black
      }

      .containerx select {
        color: black;
        font-weight: normal
      }

      .containerx select.selectError {
        border: 2px solid #aa0000;
        background: #f2d9d9;
        color: #666666
      }

      .containerx select.input-validation-error {
        border: 2px solid #aa0000;
        background: #f2d9d9;
        color: #aa0000
      }

      .containerx input.text,
      .containerx input.title {
        width: 300px;
        padding: 5px
      }

      .containerx input.title {
        font-size: 1.5em
      }

      .containerx input[type="radio"],
      .containerx input[type="checkbox"] {
        vertical-align: middle;
        margin: 0 auto;
        padding: 0
      }

      .containerx .fieldError,
      .containerx .input-validation-error {
        border: 2px solid #aa0000 !important;
        background-color: #F2D9D9 !important;
        color: #aa0000 !important
      }

      .containerx a.buttonPrimarySmall,
      .containerx a.buttonPrimaryMedium,
      .containerx a.buttonPrimaryLarge,
      .containerx a.buttonSecondarySmall,
      .containerx a.buttonSecondaryMedium,
      .containerx a.buttonSecondaryLarge,
      .containerx a.disabledMedium {
        font: bold 14px Arial, Helvetica, sans-serif;
        float: right;
        -moz-border-radius: 2px;
        -webkit-border-radius: 2px;
        border-radius: 2px;
        margin-top: 5px;
        text-align: center;
        text-decoration: none;
        padding: 7px;
        cursor: pointer
      }

      .containerx a.buttonPrimarySmall,
      .containerx a.buttonPrimaryMedium,
      .containerx a.buttonPrimaryLarge {
        border: 2px solid #00567e;
        background-color: #00567e;
        color: #fff
      }

      .containerx a.buttonPrimarySmall:hover,
      .containerx a.buttonPrimaryMedium:hover,
      .containerx a.buttonPrimaryLarge:hover {
        background-color: #004c6f;
        border-color: #004c6f
      }

      .containerx a.buttonPrimarySmall {
        font-size: 12px;
        min-width: 92px
      }

      .containerx a.buttonPrimaryMedium {
        min-width: 150px
      }

      .containerx a.buttonPrimaryLarge {
        min-width: 196px
      }

      .containerx a.buttonSecondarySmall,
      .containerx a.buttonSecondaryMedium,
      .containerx a.buttonSecondaryLarge {
        border: 2px solid #e4e4e4;
        color: #0e2b51;
        background-color: #fff
      }

      .containerx a.buttonSecondarySmall:hover,
      .containerx a.buttonSecondaryMedium:hover,
      .containerx a.buttonSecondaryLarge:hover {
        border: 2px solid #0e2b51;
        color: #fff;
        background-color: #0e2b51
      }

      .containerx a.buttonSecondarySmall {
        font-size: 12px;
        min-width: 90px
      }

      .containerx a.buttonSecondaryMedium {
        min-width: 148px
      }

      .containerx a.buttonSecondaryLarge {
        min-width: 194px
      }

      .containerx a.disabledMedium {
        font: 12px Arial, Helvetica, sans-serif;
        border: 2px solid #eee;
        min-width: 148px;
        color: #999;
        background-color: #eee;
        cursor: default;
        text-transform: uppercase
      }

      .containerx a.disabledMedium:hover {
        cursor: not-allowed
      }

      .containerx input.primarySmall,
      .containerx input.primaryMedium,
      .containerx input.primaryLarge {
        float: right;
        font: bold 14px Arial, Helvetica, sans-serif;
        background-color: #00567e;
        color: #fff;
        -moz-border-radius: 2px;
        -webkit-border-radius: 2px;
        border-radius: 2px;
        margin-top: 5px;
        text-align: center;
        text-decoration: none;
        padding: 7px;
        cursor: pointer
      }

      .containerx input.secondarySmall,
      .containerx input.secondaryMedium,
      .containerx input.secondaryLarge {
        float: right;
        font: bold 14px Arial, Helvetica, sans-serif;
        border: 2px solid #e4e4e4;
        color: #0e2b51;
        background-color: #fff;
        -moz-border-radius: 2px;
        -webkit-border-radius: 2px;
        border-radius: 2px;
        margin-top: 5px;
        text-align: center;
        text-decoration: none;
        padding: 7px;
        cursor: pointer
      }

      .containerx input.secondarySmall:hover,
      .containerx input.secondaryMedium:hover,
      .containerx input.secondaryLarge:hover {
        border: 2px solid #0e2b51;
        color: #fff;
        background-color: #0e2b51
      }

      .containerx input.disabledSmall,
      .containerx input.disabledMedium,
      .containerx input.disabledLarge {
        float: right;
        font: 12px Arial, Helvetica, sans-serif;
        margin-top: 5px;
        text-align: center;
        text-decoration: none;
        padding: 7px;
        cursor: pointer;
        text-transform: uppercase
      }

      .containerx input.primarySmall,
      .containerx input.primaryMedium,
      .containerx input.primaryLarge {
        border: 2px solid #00567e;
        background-color: #00567e;
        color: #fff
      }

      .containerx input.primarySmall:hover,
      .containerx input.primaryMedium:hover,
      .containerx input.primaryLarge:hover {
        background-color: #004c6f;
        border-color: #004c6f
      }

      .containerx input.primarySmall {
        font-size: 12px;
        min-width: 92px
      }

      .containerx input.primaryMedium {
        min-width: 150px
      }

      .containerx input.primaryLarge {
        min-width: 196px
      }

      .containerx input.disabledSmall,
      .containerx input.disabledMedium,
      .containerx input.disabledLarge {
        border: 2px solid #eee;
        background-color: #eee;
        -moz-border-radius: 2px;
        -webkit-border-radius: 2px;
        border-radius: 2px;
        color: #999;
        cursor: default
      }

      .containerx input.disabledSmall:hover,
      .containerx input.disabledMedium:hover,
      .containerx input.disabledLarge:hover {
        cursor: not-allowed
      }

      .containerx input.secondarySmall,
      .containerx input.disabledSmall {
        font-size: 12px;
        min-width: 90px
      }

      .containerx input.secondaryMedium,
      .containerx input.disabledMedium {
        min-width: 148px
      }

      .containerx input.secondaryLarge,
      .containerx input.disabledLarge {
        min-width: 194px
      }

      .containerx #utilNav {
        float: right;
        margin: 5px 6px 0 0;
        padding-top: 0;
        width: 490px;
        height: 25px;
        color: #2c4167
      }

      .containerx a.hdr,
      .containerx a.hdr:hover,
      .containerx a.hdr:visited {
        text-decoration: none;
        color: #2c4167
      }

      .containerx #utilNav p {
        margin: 0
      }

      .containerx #utilNavItems {
        list-style: none;
        float: right;
        margin: 0 0 0 1.5em;
        padding-right: 0
      }

      .containerx #utilNavItems li {
        float: left
      }

      .containerx #utilNavItems .spacer {
        color: #C9C9C9
      }

      .containerx .hanger {
        margin: 0 5px;
        float: left;
        margin-bottom: 0 !important
      }

      .containerx .hangerRight {
        float: right;
        margin-bottom: 0 !important
      }

      .containerx .header {
        height: 83px;
        position: relative
      }

      .containerx .logo {
        float: left;
        height: 55px;
        z-index: 999
      }

      .containerx .logo img {
        margin-top: 15px
      }

      .containerx .acctSettingsList {
        list-style: none
      }

      .containerx .easybizco {
        color: #0e2b51;
        font-size: 1.17em;
        font-weight: bold;
        margin-left: 320px;
        max-width: 250px;
        overflow: hidden;
        position: absolute;
        text-overflow: ellipsis;
        top: 25px;
        white-space: nowrap
      }

      .containerx .wwwsearch {
        float: right;
        margin-top: -10px;
        margin-right: 85px;
        width: 45px
      }

      .containerx .searchSignedIn {
        float: right;
        margin-top: -7px;
        width: 45px;
        margin-right: 5px
      }

      .containerx .searchNotSignedIn {
        float: right;
        margin-top: 25px;
        width: 45px;
        margin-right: 5px
      }

      .containerx .myAccountLabelWhiteBoxNonVisible {
        border: 1px solid transparent;
        border-bottom: 0;
        -moz-border-radius-topleft: 5px;
        -webkit-border-top-left-radius: 5px;
        -moz-border-radius-topright: 5px;
        -webkit-border-top-right-radius: 5px;
        padding: 0 5px;
        text-align: center;
        margin: -1px 0 0 0
      }

      .containerx .myAccountLabelWhiteBoxVisible {
        background-color: #fff;
        border-color: #dcdcdc;
        -moz-box-shadow: 3px 3px 3px #999;
        -webkit-box-shadow: 3px 3px 3px #999;
        box-shadow: 3px 3px 3px #999
      }

      .containerx .myAccountLongLabel {
        width: 225px;
        text-align: right
      }

      .containerx .myAccountDropDownWrap,
      .containerx .myAccountMenuDropDownWrap {
        display: none;
        position: absolute;
        top: 49px;
        z-index: 99999
      }

      .containerx #myAccountMenu .myAccountMenuDropDownWrap {
        top: 41px
      }

      .containerx .myAccountMenuDropDownWrap a {
        color: #b17735;
        background: #fff;
        text-decoration: none
      }

      .containerx .myAccountMenuDropDownWrap ul {
        list-style-type: none;
        background: #fff;
        margin: 0
      }

      .containerx .myAccountMenuDropDownWrap li {
        float: none;
        padding: 4px 12px
      }

      .containerx .myAccountMenuDropDownWrap a:hover {
        color: #b17735;
        text-decoration: underline
      }

      .containerx #myAccount,
      .containerx #myAccountMenu {
        margin: 0
      }

      .containerx #myAccountSignout {
        margin: 0 5px 0 0
      }

      .containerx #myTrips {
        margin: 0 5px
      }

      .containerx #cart {
        margin: 0 5px;
        background: transparent url("/content/~/media/Images/onSite/backgrounds/global.ashx") no-repeat scroll;
        background-position: 0 -38px;
        padding: 0 0 0 8px
      }

      .containerx #enEspanol,
      .containerx #english,
      .containerx #emaildeals {
        margin: 0 5px;
        margin-right: 0 !important;
        padding-right: 0
      }

      .containerx #feedback {
        clear: both;
        float: left;
        font-size: 11px;
        text-align: right
      }

      .containerx #feedback a {
        color: #9A6220
      }

      .containerx #greyInterstitialCover {
        display: none;
        position: absolute;
        margin: 80px 0 0 80px
      }

      .containerx .myAccountBorder {
        border: 1px solid #DCDCDC;
        border-top: 0;
        -moz-border-radius: 0 5px 5px 5px;
        -webkit-border-radius: 0 5px 5px 5px;
        border-radius: 0 5px 5px 5px;
        -moz-box-shadow: 3px 3px 3px #999;
        -webkit-box-shadow: 3px 3px 3px #999;
        box-shadow: 3px 3px 3px #999;
        background: white
      }

      .containerx .myAccountForm {
        width: 212px;
        padding: 10px 34px 28px 34px
      }

      .containerx .myAccountMenu {
        width: 185px;
        padding: 5px 0 0 0
      }

      .containerx #myAccountDropDownDiv li {
        float: none
      }

      .containerx .myAccountInput {
        width: 200px
      }

      .containerx select#jumpToSelection {
        height: 21px;
        width: 208px;
        font-size: 12px;
        font-family: Arial, Helvetica, sans-serif;
        padding-top: -1px
      }

      .containerx .MyAccountUserID {
        margin: 8px 0;
        height: 39px
      }

      .containerx .MyAccountPassWord {
        height: 39px;
        margin-bottom: 8px
      }

      .containerx #divUserId,
      .containerx #divPassword {
        width: 200px;
        height: 16px
      }

      .containerx .MyAccountRememberMe {
        margin-top: 8px
      }

      .containerx #RememberMeLabel {
        margin-left: 2px;
        font-weight: normal;
        font-size: 10px
      }

      .containerx .MyAccountSignUp {
        margin-top: 18px;
        float: left;
        clear: both
      }

      .containerx .MyAccountSignIn {
        margin-top: 8px;
        margin-right: 3px;
        float: right
      }

      .containerx #subNav {
        margin-bottom: 15px;
        padding-bottom: 5px;
        border: solid 1px #dcdcdc;
        border-top: 0;
        -moz-border-radius: 0 0 5px 5px;
        -webkit-border-radius: 0 0 5px 5px;
        border-radius: 0 0 5px 5px;
        background: white;
        width: 972px
      }

      .containerx #subNav .sides {
        padding: 10px 0 5px 0
      }

      .containerx #subNavigation {
        list-style: none;
        display: block;
        margin: 0;
        padding: 0 0 0 3px
      }

      .containerx #subNavigation li {
        float: left
      }

      .containerx #subNavigation a {
        color: #5f87bb;
        font-size: 13px;
        background: url(/icons/subNav.png) no-repeat;
        height: 65px;
        display: block
      }

      .containerx #subNavItem1 a {
        background-position: 0 0;
        width: 121px
      }

      .containerx #subNavItem2 a {
        background-position: -122px 0;
        width: 123px
      }

      .containerx #subNavItem3 a {
        background-position: -246px 0;
        width: 121px
      }

      .containerx #subNavItem4 a {
        background-position: -368px 0;
        width: 121px
      }

      .containerx #subNavItem5 a {
        background-position: -490px 0;
        width: 119px
      }

      .containerx #subNavItem6 a {
        background-position: -610px 0;
        width: 123px
      }

      .containerx #subNavItem7 a {
        background-position: -734px 0;
        width: 121px
      }

      .containerx #subNavItem8 a {
        background-position: -858px 0;
        width: 119px
      }

      .containerx #subNavItem1 a:hover {
        background-position: 0 -65px
      }

      .containerx #subNavItem2 a:hover {
        background-position: -122px -65px
      }

      .containerx #subNavItem3 a:hover {
        background-position: -246px -65px
      }

      .containerx #subNavItem4 a:hover {
        background-position: -368px -65px
      }

      .containerx #subNavItem5 a:hover {
        background-position: -490px -65px
      }

      .containerx #subNavItem6 a:hover {
        background-position: -610px -65px
      }

      .containerx #subNavItem7 a:hover {
        background-position: -734px -65px
      }

      .containerx #subNavItem8 a:hover {
        background-position: -858px -65px
      }

      .containerx #subNavItem1 a.selected {
        background-position: 0 -130px
      }

      .containerx #subNavItem2 a.selected {
        background-position: -122px -130px
      }

      .containerx #subNavItem3 a.selected {
        background-position: -246px -130px
      }

      .containerx #subNavItem4 a.selected {
        background-position: -368px -130px
      }

      .containerx #subNavItem5 a.selected {
        background-position: -490px -130px
      }

      .containerx #subNavItem6 a.selected {
        background-position: -610px -130px
      }

      .containerx #subNavItem7 a.selected {
        background-position: -734px -130px
      }

      .containerx #subNavItem8 a.selected {
        background-position: -858px -130px
      }

      .containerx .subnav a {
        color: #4770A2;
        text-decoration: none;
        float: left;
        margin: 5px 0px 0px 30px;
        font-size: 12px
      }

      .containerx .subnav a:visited {
        color: #4770A2;
        text-decoration: none
      }

      .containerx .subnav a:hover {
        color: #4770A2;
        text-decoration: underline
      }

      .containerx .subnav a.selected {
        color: #0e2b51;
        text-decoration: none
      }

      .containerx a.nav,
      .containerx a.nav:visited {
        color: #00336E;
        text-decoration: none;
        text-transform: uppercase
      }

      .containerx #divSubNav {
        padding: 15px 0px 5px 0px;
        font-weight: bold;
        background: white
      }

      .containerx #divSubNav span {
        margin-left: 30px
      }

      .containerx .ie6subnavfix {
        position: relative;
        z-index: 2
      }

      .containerx #bottomContent {
        position: relative;
        margin-top: 8px
      }

      .containerx #bottomContentStatic {
        margin-top: 8px
      }

      .containerx .bottomContentLeft {
        float: left;
        margin-right: 8px
      }

      .containerx .homeCarousel {
        width: 743px;
        min-height: 195px;
        margin-bottom: 8px
      }

      .containerx .homeBottomAds {
        width: 743px
      }

      .containerx .module228 {
        width: 219px;
        float: left;
        height: 316px
      }

      .containerx .dealsHolder {
        float: left;
        padding: 0 10px 0 37px !important;
        margin-top: 0px !important;
        min-height: 106px;
        _height: 106px
      }

      .containerx .dealsHolderLeft {
        width: 333px;
        float: left;
        border-right: 1px solid #DCDCDC
      }

      .containerx .dealsHolderRight {
        float: left;
        width: 328px;
        margin: 15px 0 0 27px
      }

      .containerx .dealsHolder .borderRight {
        float: left;
        margin: 15px 5px 0 5px;
        width: 243px
      }

      .containerx .dealsHolder .text {
        float: left;
        margin-left: 10px;
        width: 220px
      }

      .containerx .dealsHolder .image {
        float: left
      }

      .containerx .carouselImages {
        float: left;
        margin: 15px 10px;
        width: 711px;
        padding: 0 8px
      }

      .containerx .carouselImages li {
        float: left
      }

      .containerx a.carouselArrowLeft:link,
      .containerx a.carouselArrowLeft:visited {
        background: url(/content/~/media/Images/onSite/backgrounds/home.ashx) 0px -96px no-repeat;
        float: left;
        margin: 85px 0 0 8px;
        cursor: pointer;
        width: 17px;
        height: 37px;
        overflow: hidden
      }

      .containerx a.carouselArrowLeft:hover {
        background: url(/content/~/media/Images/onSite/backgrounds/home.ashx) -36px -96px no-repeat
      }

      .containerx a.carouselArrowRight:link,
      .containerx a.carouselArrowRight:visited {
        background: url(/content/~/media/Images/onSite/backgrounds/home.ashx) -17px -96px no-repeat;
        float: left;
        margin: 85px 0 0 0;
        cursor: pointer;
        width: 17px;
        height: 37px;
        overflow: hidden
      }

      .containerx a.carouselArrowRight:hover {
        background: url(/content/~/media/Images/onSite/backgrounds/home.ashx) -53px -96px no-repeat
      }

      .containerx img.carouselImage {
        margin: 0 10px;
        height: 166px;
        width: 214px
      }

      .containerx .homeBottomRightTitle {
        height: 40px;
        background: url(/content/~/media/Images/onSite/backgrounds/global-repeat.ashx) left bottom repeat-x;
        background-position: 0 -228px
      }

      .containerx .homeBottomRightTitle h2 {
        padding: .5em 0 0 1em;
        margin: 0;
        line-height: 110%
      }

      .containerx .homeBottomRightSelect {
        margin: 10px
    </style>
  </head>
<body>
    <div class="containerx">
      <table class="default" border="0" cellpadding="3" cellspacing="0">
        <caption><span class="hidden"> Boston to Portland, OR </span></caption>
        <tbody>
          <tr>

            <th colspan="1" style="width: 396px;" scope="col">
              Departure
            </th>
            <th colspan="4" style="width: 396px;" scope="col">
              Arrival
            </th>
            <th rowspan="2">
              Booking
            </th>
          </tr>
          <tr style="background:#e7ebd9;">

            <th style="width: 236px;font-weight:bold" scope="col">
              City
            </th>


            <th style="width: 236px;font-weight:bold" scope="col">
              City
            </th>
             <th style="width: 80px;font-weight:bold" scope="col">
                          name
                        </th>
            <th style="width: 80px;font-weight:bold" scope="col">
                           Scheduled
                       </th>
            <th style="width:80px;front-weight:bold" scope="col">
               cost
            </th>

          </tr>

            <c:forEach var="flight" items="${flights}" varStatus="loopCounter" >
                                <tr style="background:white;">

                                   <td>${flight.from}</td>
                                   <td>${flight.to}</td>
                                   <td><span style="font-weight:bold">${flight.name}</span></td>
                                   <td><span style="font-weight:bold">${flight.date}</span></td>
                                   <td><span style="font-weight:bold">${flight.cost}</span></td>
                                   <td><span><button class="Book" id="${flight.id}" date="${flight.date}">Book</button></span></td>

                                </tr>

                      </c:forEach>
         </tbody>
      </table>
    </div>
   <script type="text/javascript">
     $(".Book").click(function(){

        var data = this.getAttribute("id");
        var data1 = this.getAttribute("date");
        window.location.href="/user/book_ticket?id="+data+ "&date="+data1;
     });
   </script>


</body>
</html>
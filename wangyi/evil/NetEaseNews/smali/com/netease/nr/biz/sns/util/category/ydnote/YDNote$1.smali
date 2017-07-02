.class Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote$1;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic this$0:Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;


# direct methods
.method constructor <init>(Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote$1;->this$0:Lcom/netease/nr/biz/sns/util/category/ydnote/YDNote;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    const-string v0, "javascript:(function() {document.getElementsByClassName(\'thridBgbor\')[0].style.border=\'0px\';document.getElementsByClassName(\'thridBgbor\')[0].children[0].style.border=\'0px\';document.getElementsByClassName(\'linedot_ph\')[0].style.paddingTop = \'0px\';document.getElementsByClassName(\'opthTable\')[0].style.paddingTop = \'0px\';document.getElementsByClassName(\'opthTable\')[0].style.paddingBottom = \'0px\';document.getElementsByClassName(\'thridBgbor\')[0].style.border=\'0px\';document.getElementsByClassName(\'thridBgbor\')[0].children[0].style.border=\'0px\';document.getElementsByClassName(\'title\')[0].innerHTML = document.getElementsByClassName(\'title\')[0].innerHTML.replace(\'<br><br>\',\'\');document.getElementsByClassName(\'btn_gray\')[0].href=\'close://\';})()"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/netease/nr/biz/sns/util/category/ydnote/YdNoteLoginHelper;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "oauth/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "authorize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "javascript:window.webhandler.show(document.body.innerHTML);"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&display=mobile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.class public Lcom/netease/ad/context/NTESAdTest;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/netease/ad/f/b;


# static fields
.field static a:Landroid/widget/LinearLayout;


# instance fields
.field b:Lcom/netease/ad/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/netease/ad/context/NTESAdTest;->a:Landroid/widget/LinearLayout;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 7

    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/netease/ad/context/NTESAdTest;->setContentView(I)V

    const v0, 0x7f060004

    invoke-virtual {p0, v0}, Lcom/netease/ad/context/NTESAdTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v0, 0x7f06000c

    invoke-virtual {p0, v0}, Lcom/netease/ad/context/NTESAdTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const v0, 0x7f06000e

    invoke-virtual {p0, v0}, Lcom/netease/ad/context/NTESAdTest;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    const-string v0, "FOCUS2"

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f060010

    invoke-virtual {p0, v0}, Lcom/netease/ad/context/NTESAdTest;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    const-string v0, "1"

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f060013

    invoke-virtual {p0, v0}, Lcom/netease/ad/context/NTESAdTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v0, 0x7f060014

    invoke-virtual {p0, v0}, Lcom/netease/ad/context/NTESAdTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    new-instance v1, Lcom/netease/ad/i;

    invoke-direct {v1}, Lcom/netease/ad/i;-><init>()V

    const-string v3, "JSAD"

    invoke-virtual {v0, v1, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f06000a

    invoke-virtual {p0, v0}, Lcom/netease/ad/context/NTESAdTest;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    const/high16 v0, 0x7f060000

    invoke-virtual {p0, v0}, Lcom/netease/ad/context/NTESAdTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/Button;

    new-instance v0, Lcom/netease/ad/context/b;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/netease/ad/context/b;-><init>(Lcom/netease/ad/context/NTESAdTest;Landroid/widget/EditText;Landroid/widget/RadioButton;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f060012

    invoke-virtual {p0, v0}, Lcom/netease/ad/context/NTESAdTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/netease/ad/context/c;

    invoke-direct {v1, p0}, Lcom/netease/ad/context/c;-><init>(Lcom/netease/ad/context/NTESAdTest;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v6}, Landroid/widget/Button;->performClick()Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/netease/ad/f;->a()Lcom/netease/ad/f;

    move-result-object v0

    const-string v1, "7A16FBB6"

    invoke-virtual {v0, p0, v1}, Lcom/netease/ad/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "category"

    const-string v2, "FOCUS2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "location"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/netease/ad/f;->a()Lcom/netease/ad/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/ad/f;->a(Ljava/util/HashMap;)Lcom/netease/ad/a;

    move-result-object v0

    new-instance v1, Lcom/netease/ad/context/a;

    invoke-direct {v1, p0, v0}, Lcom/netease/ad/context/a;-><init>(Lcom/netease/ad/context/NTESAdTest;Lcom/netease/ad/a;)V

    invoke-virtual {v0, v1}, Lcom/netease/ad/a;->a(Lcom/netease/ad/d;)V

    invoke-direct {p0}, Lcom/netease/ad/context/NTESAdTest;->a()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/netease/ad/context/NTESAdTest;->b:Lcom/netease/ad/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ad/context/NTESAdTest;->b:Lcom/netease/ad/a;

    invoke-virtual {v0}, Lcom/netease/ad/a;->b()V

    :cond_0
    invoke-static {}, Lcom/netease/ad/f;->a()Lcom/netease/ad/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ad/f;->b()V

    return-void
.end method

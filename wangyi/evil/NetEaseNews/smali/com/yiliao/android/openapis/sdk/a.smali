.class public Lcom/yiliao/android/openapis/sdk/a;
.super Landroid/app/Activity;


# instance fields
.field public a:Landroid/app/ProgressDialog;

.field private b:Lcom/yiliao/android/openapis/sdk/b;

.field private c:Lcom/yiliao/android/openapis/sdk/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/yiliao/android/openapis/sdk/a$1;

    invoke-direct {v0, p0}, Lcom/yiliao/android/openapis/sdk/a$1;-><init>(Lcom/yiliao/android/openapis/sdk/a;)V

    iput-object v0, p0, Lcom/yiliao/android/openapis/sdk/a;->c:Lcom/yiliao/android/openapis/sdk/e;

    return-void
.end method

.method static synthetic a(Lcom/yiliao/android/openapis/sdk/a;)Lcom/yiliao/android/openapis/sdk/e;
    .locals 1

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a;->c:Lcom/yiliao/android/openapis/sdk/e;

    return-object v0
.end method

.method static synthetic a(Lcom/yiliao/android/openapis/sdk/a;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u4e0b\u8f7d"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u60a8\u5c1a\u672a\u5b89\u88c5\u7ffc\u804a\uff01"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/yiliao/android/openapis/sdk/a$3;

    invoke-direct {v2, p0, p2}, Lcom/yiliao/android/openapis/sdk/a$3;-><init>(Lcom/yiliao/android/openapis/sdk/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/yiliao/android/openapis/sdk/a$4;

    invoke-direct {v2, p0}, Lcom/yiliao/android/openapis/sdk/a$4;-><init>(Lcom/yiliao/android/openapis/sdk/a;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/yiliao/android/openapis/sdk/a$5;

    invoke-direct {v1, p0}, Lcom/yiliao/android/openapis/sdk/a$5;-><init>(Lcom/yiliao/android/openapis/sdk/a;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic a(Lcom/yiliao/android/openapis/sdk/a;Lcom/yiliao/android/openapis/sdk/b;)V
    .locals 0

    iput-object p1, p0, Lcom/yiliao/android/openapis/sdk/a;->b:Lcom/yiliao/android/openapis/sdk/b;

    return-void
.end method

.method static synthetic b(Lcom/yiliao/android/openapis/sdk/a;)Lcom/yiliao/android/openapis/sdk/b;
    .locals 1

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a;->b:Lcom/yiliao/android/openapis/sdk/b;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 1

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a;->b:Lcom/yiliao/android/openapis/sdk/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a;->b:Lcom/yiliao/android/openapis/sdk/b;

    invoke-virtual {v0}, Lcom/yiliao/android/openapis/sdk/b;->a()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/16 v2, 0x80

    const/4 v0, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/yiliao/android/openapis/sdk/a;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    if-eqz v0, :cond_9

    new-instance v0, Lcom/yiliao/android/openapis/sdk/a$2;

    invoke-direct {v0, p0}, Lcom/yiliao/android/openapis/sdk/a$2;-><init>(Lcom/yiliao/android/openapis/sdk/a;)V

    invoke-virtual {v0}, Lcom/yiliao/android/openapis/sdk/a$2;->start()V

    :goto_1
    return-void

    :cond_0
    const-string v3, "mounted_ro"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "\u867d\u7136SD\u5b58\u5728\uff0c\u4f46\u662f\u4e3a\u53ea\u8bfb\u72b6\u6001"

    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    goto :goto_0

    :cond_1
    const-string v3, "removed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v2, "SD\u4e0d\u5b58\u5728"

    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    goto :goto_0

    :cond_2
    const-string v3, "shared"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v2, "\u867d\u7136SD\u5361\u5b58\u5728\uff0c\u4f46\u662f\u6b63\u4e0ePC\u7b49\u76f8\u8fde\u63a5"

    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    goto :goto_0

    :cond_3
    const-string v3, "bad_removal"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v2, "SD\u5361\u5728\u6302\u8f7d\u72b6\u6001\u4e0b\u88ab\u9519\u8bef\u53d6\u51fa"

    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    goto :goto_0

    :cond_4
    const-string v3, "checking"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v2, "\u6b63\u5728\u68c0\u67e5SD\u5361"

    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    goto :goto_0

    :cond_5
    const-string v3, "nofs"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v2, "\u867d\u7136SD\u5361\u5b58\u5728\uff0c\u4f46\u5176\u6587\u4ef6\u7cfb\u7edf\u4e0d\u88ab\u652f\u6301"

    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    goto :goto_0

    :cond_6
    const-string v3, "unmountable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v2, "\u867d\u7136SD\u5361\u5b58\u5728\uff0c\u4f46\u662f\u65e0\u6cd5\u88ab\u6302\u8f7d"

    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    goto/16 :goto_0

    :cond_7
    const-string v3, "unmounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "\u867d\u7136SD\u5361\u5b58\u5728\uff0c\u4f46\u662f\u672a\u88ab\u6302\u8f7d"

    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    goto/16 :goto_0

    :cond_8
    const-string v2, "SD\u5361\u7684\u5176\u4ed6\u539f\u56e0"

    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/yiliao/android/openapis/sdk/a;->finish()V

    goto/16 :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/yiliao/android/openapis/sdk/a;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    invoke-virtual {p0}, Lcom/yiliao/android/openapis/sdk/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

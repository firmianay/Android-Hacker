.class final Lcom/yiliao/android/openapis/sdk/a$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/yiliao/android/openapis/sdk/a;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yiliao/android/openapis/sdk/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yiliao/android/openapis/sdk/a$3;->a:Lcom/yiliao/android/openapis/sdk/a;

    iput-object p2, p0, Lcom/yiliao/android/openapis/sdk/a$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/yiliao/android/openapis/sdk/a$3;)Lcom/yiliao/android/openapis/sdk/a;
    .locals 1

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a$3;->a:Lcom/yiliao/android/openapis/sdk/a;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a$3;->a:Lcom/yiliao/android/openapis/sdk/a;

    new-instance v1, Lcom/yiliao/android/openapis/sdk/b;

    iget-object v2, p0, Lcom/yiliao/android/openapis/sdk/a$3;->a:Lcom/yiliao/android/openapis/sdk/a;

    invoke-static {v2}, Lcom/yiliao/android/openapis/sdk/a;->a(Lcom/yiliao/android/openapis/sdk/a;)Lcom/yiliao/android/openapis/sdk/e;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yiliao/android/openapis/sdk/b;-><init>(Lcom/yiliao/android/openapis/sdk/e;)V

    invoke-static {v0, v1}, Lcom/yiliao/android/openapis/sdk/a;->a(Lcom/yiliao/android/openapis/sdk/a;Lcom/yiliao/android/openapis/sdk/b;)V

    :try_start_0
    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a$3;->a:Lcom/yiliao/android/openapis/sdk/a;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/yiliao/android/openapis/sdk/a$3;->a:Lcom/yiliao/android/openapis/sdk/a;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/yiliao/android/openapis/sdk/a;->a:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a$3;->a:Lcom/yiliao/android/openapis/sdk/a;

    iget-object v0, v0, Lcom/yiliao/android/openapis/sdk/a;->a:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a$3;->a:Lcom/yiliao/android/openapis/sdk/a;

    iget-object v0, v0, Lcom/yiliao/android/openapis/sdk/a;->a:Landroid/app/ProgressDialog;

    const-string v1, "\u4e0b\u8f7d"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a$3;->a:Lcom/yiliao/android/openapis/sdk/a;

    iget-object v0, v0, Lcom/yiliao/android/openapis/sdk/a;->a:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a$3;->a:Lcom/yiliao/android/openapis/sdk/a;

    iget-object v0, v0, Lcom/yiliao/android/openapis/sdk/a;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a$3;->a:Lcom/yiliao/android/openapis/sdk/a;

    iget-object v0, v0, Lcom/yiliao/android/openapis/sdk/a;->a:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a$3;->a:Lcom/yiliao/android/openapis/sdk/a;

    iget-object v0, v0, Lcom/yiliao/android/openapis/sdk/a;->a:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/yiliao/android/openapis/sdk/a$3$1;

    invoke-direct {v1, p0}, Lcom/yiliao/android/openapis/sdk/a$3$1;-><init>(Lcom/yiliao/android/openapis/sdk/a$3;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a$3;->a:Lcom/yiliao/android/openapis/sdk/a;

    invoke-static {v0}, Lcom/yiliao/android/openapis/sdk/a;->b(Lcom/yiliao/android/openapis/sdk/a;)Lcom/yiliao/android/openapis/sdk/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yiliao/android/openapis/sdk/a$3;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/yiliao/android/openapis/sdk/a$3;->a:Lcom/yiliao/android/openapis/sdk/a;

    invoke-static {}, Lcom/yiliao/android/openapis/sdk/c;->a()Lcom/yiliao/android/openapis/sdk/c;

    move-result-object v3

    new-instance v4, Lcom/yiliao/android/openapis/sdk/b$1;

    invoke-direct {v4, v0, v2, v1}, Lcom/yiliao/android/openapis/sdk/b$1;-><init>(Lcom/yiliao/android/openapis/sdk/b;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/yiliao/android/openapis/sdk/c;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

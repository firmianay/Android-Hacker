.class final Lcom/yiliao/android/openapis/sdk/a$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/yiliao/android/openapis/sdk/a$1;


# direct methods
.method constructor <init>(Lcom/yiliao/android/openapis/sdk/a$1;)V
    .locals 0

    iput-object p1, p0, Lcom/yiliao/android/openapis/sdk/a$1$2;->a:Lcom/yiliao/android/openapis/sdk/a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a$1$2;->a:Lcom/yiliao/android/openapis/sdk/a$1;

    iget-object v0, v0, Lcom/yiliao/android/openapis/sdk/a$1;->a:Lcom/yiliao/android/openapis/sdk/a;

    iget-object v0, v0, Lcom/yiliao/android/openapis/sdk/a;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a$1$2;->a:Lcom/yiliao/android/openapis/sdk/a$1;

    iget-object v0, v0, Lcom/yiliao/android/openapis/sdk/a$1;->a:Lcom/yiliao/android/openapis/sdk/a;

    iget-object v0, v0, Lcom/yiliao/android/openapis/sdk/a;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a$1$2;->a:Lcom/yiliao/android/openapis/sdk/a$1;

    iget-object v0, v0, Lcom/yiliao/android/openapis/sdk/a$1;->a:Lcom/yiliao/android/openapis/sdk/a;

    const-string v1, "\u4e0b\u8f7d\u5931\u8d25"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    :cond_0
    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a$1$2;->a:Lcom/yiliao/android/openapis/sdk/a$1;

    iget-object v0, v0, Lcom/yiliao/android/openapis/sdk/a$1;->a:Lcom/yiliao/android/openapis/sdk/a;

    invoke-virtual {v0}, Lcom/yiliao/android/openapis/sdk/a;->finish()V

    return-void
.end method

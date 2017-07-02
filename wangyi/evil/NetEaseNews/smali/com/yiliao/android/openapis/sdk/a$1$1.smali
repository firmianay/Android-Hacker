.class final Lcom/yiliao/android/openapis/sdk/a$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/yiliao/android/openapis/sdk/a$1;


# direct methods
.method constructor <init>(Lcom/yiliao/android/openapis/sdk/a$1;)V
    .locals 0

    iput-object p1, p0, Lcom/yiliao/android/openapis/sdk/a$1$1;->a:Lcom/yiliao/android/openapis/sdk/a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a$1$1;->a:Lcom/yiliao/android/openapis/sdk/a$1;

    iget-object v0, v0, Lcom/yiliao/android/openapis/sdk/a$1;->a:Lcom/yiliao/android/openapis/sdk/a;

    iget-object v0, v0, Lcom/yiliao/android/openapis/sdk/a;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a$1$1;->a:Lcom/yiliao/android/openapis/sdk/a$1;

    iget-object v0, v0, Lcom/yiliao/android/openapis/sdk/a$1;->a:Lcom/yiliao/android/openapis/sdk/a;

    iget-object v0, v0, Lcom/yiliao/android/openapis/sdk/a;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a$1$1;->a:Lcom/yiliao/android/openapis/sdk/a$1;

    iget-object v0, v0, Lcom/yiliao/android/openapis/sdk/a$1;->a:Lcom/yiliao/android/openapis/sdk/a;

    invoke-virtual {v0}, Lcom/yiliao/android/openapis/sdk/a;->finish()V

    return-void
.end method

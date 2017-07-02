.class final Lcom/yiliao/android/openapis/sdk/a$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private synthetic a:Lcom/yiliao/android/openapis/sdk/a$3;


# direct methods
.method constructor <init>(Lcom/yiliao/android/openapis/sdk/a$3;)V
    .locals 0

    iput-object p1, p0, Lcom/yiliao/android/openapis/sdk/a$3$1;->a:Lcom/yiliao/android/openapis/sdk/a$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/a$3$1;->a:Lcom/yiliao/android/openapis/sdk/a$3;

    invoke-static {v0}, Lcom/yiliao/android/openapis/sdk/a$3;->a(Lcom/yiliao/android/openapis/sdk/a$3;)Lcom/yiliao/android/openapis/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yiliao/android/openapis/sdk/a;->finish()V

    return-void
.end method

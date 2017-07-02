.class final Lcom/yiliao/android/openapis/sdk/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/yiliao/android/openapis/sdk/b;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yiliao/android/openapis/sdk/b;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yiliao/android/openapis/sdk/b$1;->a:Lcom/yiliao/android/openapis/sdk/b;

    iput-object p2, p0, Lcom/yiliao/android/openapis/sdk/b$1;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/yiliao/android/openapis/sdk/b$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/yiliao/android/openapis/sdk/b$1;->a:Lcom/yiliao/android/openapis/sdk/b;

    iget-object v1, p0, Lcom/yiliao/android/openapis/sdk/b$1;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/yiliao/android/openapis/sdk/b$1;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/yiliao/android/openapis/sdk/b;->a(Lcom/yiliao/android/openapis/sdk/b;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

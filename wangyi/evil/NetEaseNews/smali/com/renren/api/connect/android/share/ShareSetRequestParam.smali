.class public Lcom/renren/api/connect/android/share/ShareSetRequestParam;
.super Lcom/renren/api/connect/android/common/RequestParam;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field private static final METHOD:Ljava/lang/String; = "share.share"


# instance fields
.field private comment:Ljava/lang/String;

.field private type:I

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/renren/api/connect/android/share/ShareSetRequestParam$1;

    invoke-direct {v0}, Lcom/renren/api/connect/android/share/ShareSetRequestParam$1;-><init>()V

    sput-object v0, Lcom/renren/api/connect/android/share/ShareSetRequestParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Lcom/renren/api/connect/android/common/RequestParam;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lcom/renren/api/connect/android/share/ShareSetRequestParam;->type:I

    const-string v0, ""

    iput-object v0, p0, Lcom/renren/api/connect/android/share/ShareSetRequestParam;->comment:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/renren/api/connect/android/share/ShareSetRequestParam;->url:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/renren/api/connect/android/share/ShareSetRequestParam;->comment:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/renren/api/connect/android/common/RequestParam;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lcom/renren/api/connect/android/share/ShareSetRequestParam;->type:I

    const-string v0, ""

    iput-object v0, p0, Lcom/renren/api/connect/android/share/ShareSetRequestParam;->comment:Ljava/lang/String;

    iput-object p1, p0, Lcom/renren/api/connect/android/share/ShareSetRequestParam;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/renren/api/connect/android/share/ShareSetRequestParam;->comment:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lcom/renren/api/connect/android/share/ShareSetRequestParam;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/renren/api/connect/android/share/ShareSetRequestParam;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "Cannot send null url."

    new-instance v1, Lcom/renren/api/connect/android/exception/RenrenException;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0, v0}, Lcom/renren/api/connect/android/exception/RenrenException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "method"

    const-string v2, "share.share"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    iget v2, p0, Lcom/renren/api/connect/android/share/ShareSetRequestParam;->type:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "url"

    iget-object v2, p0, Lcom/renren/api/connect/android/share/ShareSetRequestParam;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "comment"

    iget-object v2, p0, Lcom/renren/api/connect/android/share/ShareSetRequestParam;->comment:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/renren/api/connect/android/share/ShareSetRequestParam;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/renren/api/connect/android/share/ShareSetRequestParam;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/renren/api/connect/android/share/ShareSetRequestParam;->comment:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/renren/api/connect/android/share/ShareSetRequestParam;->comment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

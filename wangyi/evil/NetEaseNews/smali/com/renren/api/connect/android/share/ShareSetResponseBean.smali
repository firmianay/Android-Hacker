.class public Lcom/renren/api/connect/android/share/ShareSetResponseBean;
.super Lcom/renren/api/connect/android/common/ResponseBean;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final DEFAULT_RESULT:I = 0x0

.field private static final RESULT:Ljava/lang/String; = "result"

.field public static final RESULT_OK:I = 0x1


# instance fields
.field private result:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/renren/api/connect/android/share/ShareSetResponseBean$1;

    invoke-direct {v0}, Lcom/renren/api/connect/android/share/ShareSetResponseBean$1;-><init>()V

    sput-object v0, Lcom/renren/api/connect/android/share/ShareSetResponseBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/renren/api/connect/android/common/ResponseBean;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/renren/api/connect/android/share/ShareSetResponseBean;->result:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/renren/api/connect/android/common/ResponseBean;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/renren/api/connect/android/share/ShareSetResponseBean;->result:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/renren/api/connect/android/common/ResponseBean;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/renren/api/connect/android/share/ShareSetResponseBean;->result:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput v0, p0, Lcom/renren/api/connect/android/share/ShareSetResponseBean;->result:I

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getResult()I
    .locals 1

    iget v0, p0, Lcom/renren/api/connect/android/share/ShareSetResponseBean;->result:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "result: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/renren/api/connect/android/share/ShareSetResponseBean;->result:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/renren/api/connect/android/share/ShareSetResponseBean;->result:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

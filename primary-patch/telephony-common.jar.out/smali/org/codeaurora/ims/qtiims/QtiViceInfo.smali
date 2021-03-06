.class public Lorg/codeaurora/ims/qtiims/QtiViceInfo;
.super Ljava/lang/Object;
.source "QtiViceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/qtiims/QtiViceInfo$1;
    }
.end annotation


# static fields
.field public static final CALL_TYPE_VIDEO_HELD:Ljava/lang/String; = "vtheld"

.field public static final CALL_TYPE_VIDEO_RX:Ljava/lang/String; = "vtrx"

.field public static final CALL_TYPE_VIDEO_TX:Ljava/lang/String; = "vttx"

.field public static final CALL_TYPE_VIDEO_TX_RX:Ljava/lang/String; = "vttxrx"

.field public static final CALL_TYPE_VOICE_ACTIVE:Ljava/lang/String; = "volteactive"

.field public static final CALL_TYPE_VOICE_HELD:Ljava/lang/String; = "volteheld"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/codeaurora/ims/qtiims/QtiViceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final INDEX_CALLTYPE:I = 0x3

.field public static final INDEX_DIALOG_ID:I = 0x0

.field public static final INDEX_DIRECTION:I = 0x4

.field public static final INDEX_ISPULLABLE:I = 0x2

.field public static final INDEX_MAX:I = 0x5

.field public static final INDEX_NUMBER:I = 0x1

.field public static final MEDIA_DIRECTION_INACTIVE:Ljava/lang/String; = "inactive"

.field public static final MEDIA_DIRECTION_RECVONLY:Ljava/lang/String; = "recvonly"

.field public static final MEDIA_DIRECTION_SENDONLY:Ljava/lang/String; = "sendonly"

.field public static final MEDIA_DIRECTION_SENDRECV:Ljava/lang/String; = "sendrecv"

.field public static final MEDIA_TYPE_AUDIO:Ljava/lang/String; = "audio"

.field public static final MEDIA_TYPE_VIDEO:Ljava/lang/String; = "video"

.field public static final STATE_CONFIRMED:Ljava/lang/String; = "confirmed"

.field public static final STATE_TERMINATED:Ljava/lang/String; = "terminated"

.field private static final TAG:Ljava/lang/String; = "QtiViceInfo"

.field public static callInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public dialogSize:I

.field private mViceInfoAsString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lorg/codeaurora/ims/qtiims/QtiViceInfo$1;

    invoke-direct {v0}, Lorg/codeaurora/ims/qtiims/QtiViceInfo$1;-><init>()V

    sput-object v0, Lorg/codeaurora/ims/qtiims/QtiViceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/qtiims/QtiViceInfo;->mViceInfoAsString:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/qtiims/QtiViceInfo;->dialogSize:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/qtiims/QtiViceInfo;->mViceInfoAsString:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/qtiims/QtiViceInfo;->dialogSize:I

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/qtiims/QtiViceInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "dialogIds":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/qtiims/QtiViceInfo;->mViceInfoAsString:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/qtiims/QtiViceInfo;->dialogSize:I

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/codeaurora/ims/qtiims/QtiViceInfo;->callInfo:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lorg/codeaurora/ims/qtiims/QtiViceInfo;->dialogSize:I

    sput-object p1, Lorg/codeaurora/ims/qtiims/QtiViceInfo;->callInfo:Ljava/util/List;

    const-string v0, "QtiViceInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QtiViceInfo const = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/codeaurora/ims/qtiims/QtiViceInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lorg/codeaurora/ims/qtiims/QtiViceInfo;->dialogSize:I

    const-string v2, "QtiViceInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readFromParcel size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/codeaurora/ims/qtiims/QtiViceInfo;->dialogSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lorg/codeaurora/ims/qtiims/QtiViceInfo;->dialogSize:I

    if-gez v2, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lorg/codeaurora/ims/qtiims/QtiViceInfo;->callInfo:Ljava/util/List;

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/codeaurora/ims/qtiims/QtiViceInfo;->dialogSize:I

    if-ge v0, v2, :cond_1

    const/4 v2, 0x5

    new-array v1, v2, [Ljava/lang/String;

    .local v1, "info":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/codeaurora/ims/qtiims/QtiViceInfo;->callInfo:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "info":[Ljava/lang/String;
    :cond_1
    const-string v2, "QtiViceInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readFromParcel - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/codeaurora/ims/qtiims/QtiViceInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getViceDialogInfoAsString()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/codeaurora/ims/qtiims/QtiViceInfo;->mViceInfoAsString:Ljava/lang/String;

    return-object v0
.end method

.method public setViceDialogInfoAsString(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lorg/codeaurora/ims/qtiims/QtiViceInfo;->mViceInfoAsString:Ljava/lang/String;

    const-string v0, "QtiViceInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setViceDialogInfoAsString XML String = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/qtiims/QtiViceInfo;->mViceInfoAsString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v4, 0x0

    sget-object v3, Lorg/codeaurora/ims/qtiims/QtiViceInfo;->callInfo:Ljava/util/List;

    if-eqz v3, :cond_1

    const-string v3, "QtiViceInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCallInfo size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/codeaurora/ims/qtiims/QtiViceInfo;->dialogSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lorg/codeaurora/ims/qtiims/QtiViceInfo;->dialogSize:I

    if-ge v1, v3, :cond_0

    sget-object v3, Lorg/codeaurora/ims/qtiims/QtiViceInfo;->callInfo:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .local v0, "callinfo":[Ljava/lang/String;
    const-string v3, "QtiViceInfo :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "DialogId - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Number - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "IsPullable - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "CallType - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Direction - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x4

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "callinfo":[Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .end local v1    # "i":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    return-object v4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-object v2, Lorg/codeaurora/ims/qtiims/QtiViceInfo;->callInfo:Ljava/util/List;

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/codeaurora/ims/qtiims/QtiViceInfo;->dialogSize:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/codeaurora/ims/qtiims/QtiViceInfo;->dialogSize:I

    if-ge v1, v2, :cond_0

    sget-object v2, Lorg/codeaurora/ims/qtiims/QtiViceInfo;->callInfo:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .local v0, "callPull":[Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "callPull":[Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .end local v1    # "i":I
    :cond_1
    return-void
.end method

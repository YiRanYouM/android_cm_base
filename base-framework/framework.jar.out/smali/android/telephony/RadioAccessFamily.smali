.class public Landroid/telephony/RadioAccessFamily;
.super Ljava/lang/Object;
.source "RadioAccessFamily.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/RadioAccessFamily$1;
    }
.end annotation


# static fields
.field private static final CDMA:I = 0x70

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/RadioAccessFamily;",
            ">;"
        }
    .end annotation
.end field

.field private static final EVDO:I = 0x3180

.field private static final GSM:I = 0x10006

.field private static final HS:I = 0x8e00

.field private static final LTE:I = 0x84000

.field public static final RAF_1xRTT:I = 0x40

.field public static final RAF_EDGE:I = 0x4

.field public static final RAF_EHRPD:I = 0x2000

.field public static final RAF_EVDO_0:I = 0x80

.field public static final RAF_EVDO_A:I = 0x100

.field public static final RAF_EVDO_B:I = 0x1000

.field public static final RAF_GPRS:I = 0x2

.field public static final RAF_GSM:I = 0x10000

.field public static final RAF_HSDPA:I = 0x200

.field public static final RAF_HSPA:I = 0x800

.field public static final RAF_HSPAP:I = 0x8000

.field public static final RAF_HSUPA:I = 0x400

.field public static final RAF_IS95A:I = 0x10

.field public static final RAF_IS95B:I = 0x20

.field public static final RAF_LTE:I = 0x4000

.field public static final RAF_LTE_CA:I = 0x80000

.field public static final RAF_TD_SCDMA:I = 0x20000

.field public static final RAF_UMTS:I = 0x8

.field public static final RAF_UNKNOWN:I = 0x1

.field private static final WCDMA:I = 0x8e08


# instance fields
.field private mPhoneId:I

.field private mRadioAccessFamily:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/telephony/RadioAccessFamily$1;

    invoke-direct {v0}, Landroid/telephony/RadioAccessFamily$1;-><init>()V

    sput-object v0, Landroid/telephony/RadioAccessFamily;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "radioAccessFamily"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/RadioAccessFamily;->mPhoneId:I

    iput p2, p0, Landroid/telephony/RadioAccessFamily;->mRadioAccessFamily:I

    return-void
.end method

.method private static getAdjustedRaf(I)I
    .locals 3
    .param p0, "raf"    # I

    .prologue
    const v2, 0x10006

    const v1, 0x8e08

    and-int v0, v2, p0

    if-lez v0, :cond_0

    or-int/2addr p0, v2

    :cond_0
    and-int v0, v1, p0

    if-lez v0, :cond_1

    or-int/2addr p0, v1

    :cond_1
    and-int/lit8 v0, p0, 0x70

    if-lez v0, :cond_2

    or-int/lit8 p0, p0, 0x70

    :cond_2
    and-int/lit16 v0, p0, 0x3180

    if-lez v0, :cond_3

    or-int/lit16 p0, p0, 0x3180

    :cond_3
    const v0, 0x84000

    and-int/2addr v0, p0

    if-lez v0, :cond_4

    const v0, 0x84000

    or-int/2addr p0, v0

    :cond_4
    return p0
.end method

.method public static getNetworkTypeFromRaf(I)I
    .locals 1
    .param p0, "raf"    # I

    .prologue
    invoke-static {p0}, Landroid/telephony/RadioAccessFamily;->getAdjustedRaf(I)I

    move-result p0

    sparse-switch p0, :sswitch_data_0

    sget v0, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    .local v0, "type":I
    :goto_0
    return v0

    .end local v0    # "type":I
    :sswitch_0
    const/4 v0, 0x0

    .restart local v0    # "type":I
    goto :goto_0

    .end local v0    # "type":I
    :sswitch_1
    const/4 v0, 0x1

    .restart local v0    # "type":I
    goto :goto_0

    .end local v0    # "type":I
    :sswitch_2
    const/4 v0, 0x2

    .restart local v0    # "type":I
    goto :goto_0

    .end local v0    # "type":I
    :sswitch_3
    const/4 v0, 0x4

    .restart local v0    # "type":I
    goto :goto_0

    .end local v0    # "type":I
    :sswitch_4
    const/16 v0, 0x8

    .restart local v0    # "type":I
    goto :goto_0

    .end local v0    # "type":I
    :sswitch_5
    const/16 v0, 0x9

    .restart local v0    # "type":I
    goto :goto_0

    .end local v0    # "type":I
    :sswitch_6
    const/16 v0, 0xa

    .restart local v0    # "type":I
    goto :goto_0

    .end local v0    # "type":I
    :sswitch_7
    const/16 v0, 0xb

    .restart local v0    # "type":I
    goto :goto_0

    .end local v0    # "type":I
    :sswitch_8
    const/16 v0, 0xc

    .restart local v0    # "type":I
    goto :goto_0

    .end local v0    # "type":I
    :sswitch_9
    const/4 v0, 0x5

    .restart local v0    # "type":I
    goto :goto_0

    .end local v0    # "type":I
    :sswitch_a
    const/4 v0, 0x6

    .restart local v0    # "type":I
    goto :goto_0

    .end local v0    # "type":I
    :sswitch_b
    const/4 v0, 0x7

    .restart local v0    # "type":I
    goto :goto_0

    .end local v0    # "type":I
    :sswitch_c
    const/16 v0, 0xd

    .restart local v0    # "type":I
    goto :goto_0

    .end local v0    # "type":I
    :sswitch_d
    const/16 v0, 0xe

    .restart local v0    # "type":I
    goto :goto_0

    .end local v0    # "type":I
    :sswitch_e
    const/16 v0, 0xf

    .restart local v0    # "type":I
    goto :goto_0

    .end local v0    # "type":I
    :sswitch_f
    const/16 v0, 0x10

    .restart local v0    # "type":I
    goto :goto_0

    .end local v0    # "type":I
    :sswitch_10
    const/16 v0, 0x11

    .restart local v0    # "type":I
    goto :goto_0

    .end local v0    # "type":I
    :sswitch_11
    const/16 v0, 0x12

    .restart local v0    # "type":I
    goto :goto_0

    .end local v0    # "type":I
    :sswitch_12
    const/16 v0, 0x13

    .restart local v0    # "type":I
    goto :goto_0

    .end local v0    # "type":I
    :sswitch_13
    const/16 v0, 0x14

    .restart local v0    # "type":I
    goto :goto_0

    .end local v0    # "type":I
    :sswitch_14
    const/16 v0, 0x15

    .restart local v0    # "type":I
    goto :goto_0

    .end local v0    # "type":I
    :sswitch_15
    const/16 v0, 0x16

    .restart local v0    # "type":I
    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x70 -> :sswitch_9
        0x3180 -> :sswitch_a
        0x31f0 -> :sswitch_3
        0x8e08 -> :sswitch_2
        0x10006 -> :sswitch_1
        0x18e0e -> :sswitch_0
        0x1bffe -> :sswitch_b
        0x20000 -> :sswitch_c
        0x24000 -> :sswitch_e
        0x28e08 -> :sswitch_d
        0x2ce08 -> :sswitch_12
        0x30006 -> :sswitch_f
        0x34006 -> :sswitch_10
        0x38e0e -> :sswitch_11
        0x3bffe -> :sswitch_14
        0x3ce0e -> :sswitch_13
        0x3fffe -> :sswitch_15
        0x84000 -> :sswitch_7
        0x871f0 -> :sswitch_4
        0x8ce08 -> :sswitch_8
        0x9ce0e -> :sswitch_5
        0x9fffe -> :sswitch_6
    .end sparse-switch
.end method

.method public static getRafFromNetworkType(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x1

    .local v0, "raf":I
    :goto_0
    return v0

    .end local v0    # "raf":I
    :pswitch_0
    const v0, 0x18e0e

    .restart local v0    # "raf":I
    goto :goto_0

    .end local v0    # "raf":I
    :pswitch_1
    const v0, 0x10006

    .restart local v0    # "raf":I
    goto :goto_0

    .end local v0    # "raf":I
    :pswitch_2
    const v0, 0x8e08

    .restart local v0    # "raf":I
    goto :goto_0

    .end local v0    # "raf":I
    :pswitch_3
    const v0, 0x18e0e

    .restart local v0    # "raf":I
    goto :goto_0

    .end local v0    # "raf":I
    :pswitch_4
    const/16 v0, 0x31f0

    .restart local v0    # "raf":I
    goto :goto_0

    .end local v0    # "raf":I
    :pswitch_5
    const v0, 0x871f0

    .restart local v0    # "raf":I
    goto :goto_0

    .end local v0    # "raf":I
    :pswitch_6
    const v0, 0x9ce0e

    .restart local v0    # "raf":I
    goto :goto_0

    .end local v0    # "raf":I
    :pswitch_7
    const v0, 0x9fffe

    .restart local v0    # "raf":I
    goto :goto_0

    .end local v0    # "raf":I
    :pswitch_8
    const v0, 0x84000

    .restart local v0    # "raf":I
    goto :goto_0

    .end local v0    # "raf":I
    :pswitch_9
    const v0, 0x8ce08

    .restart local v0    # "raf":I
    goto :goto_0

    .end local v0    # "raf":I
    :pswitch_a
    const/16 v0, 0x70

    .restart local v0    # "raf":I
    goto :goto_0

    .end local v0    # "raf":I
    :pswitch_b
    const/16 v0, 0x3180

    .restart local v0    # "raf":I
    goto :goto_0

    .end local v0    # "raf":I
    :pswitch_c
    const v0, 0x1bffe

    .restart local v0    # "raf":I
    goto :goto_0

    .end local v0    # "raf":I
    :pswitch_d
    const/high16 v0, 0x20000

    .restart local v0    # "raf":I
    goto :goto_0

    .end local v0    # "raf":I
    :pswitch_e
    const v0, 0x28e08

    .restart local v0    # "raf":I
    goto :goto_0

    .end local v0    # "raf":I
    :pswitch_f
    const v0, 0x24000

    .restart local v0    # "raf":I
    goto :goto_0

    .end local v0    # "raf":I
    :pswitch_10
    const v0, 0x30006

    .restart local v0    # "raf":I
    goto :goto_0

    .end local v0    # "raf":I
    :pswitch_11
    const v0, 0x34006

    .restart local v0    # "raf":I
    goto :goto_0

    .end local v0    # "raf":I
    :pswitch_12
    const v0, 0x38e0e

    .restart local v0    # "raf":I
    goto :goto_0

    .end local v0    # "raf":I
    :pswitch_13
    const v0, 0x2ce08

    .restart local v0    # "raf":I
    goto :goto_0

    .end local v0    # "raf":I
    :pswitch_14
    const v0, 0x3ce0e

    .restart local v0    # "raf":I
    goto :goto_0

    .end local v0    # "raf":I
    :pswitch_15
    const v0, 0x3bffe

    .restart local v0    # "raf":I
    goto :goto_0

    .end local v0    # "raf":I
    :pswitch_16
    const v0, 0x3fffe

    .restart local v0    # "raf":I
    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method public static rafTypeFromString(Ljava/lang/String;)I
    .locals 7
    .param p0, "rafList"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const-string v4, "\\|"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "rafs":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "result":I
    const/4 v4, 0x0

    array-length v5, v2

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v2, v4

    .local v0, "raf":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/RadioAccessFamily;->singleRafTypeFromString(Ljava/lang/String;)I

    move-result v1

    .local v1, "rafType":I
    const/4 v6, 0x1

    if-ne v1, v6, :cond_0

    return v1

    :cond_0
    or-int/2addr v3, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v0    # "raf":Ljava/lang/String;
    .end local v1    # "rafType":I
    :cond_1
    return v3
.end method

.method public static singleRafTypeFromString(Ljava/lang/String;)I
    .locals 1
    .param p0, "rafString"    # Ljava/lang/String;

    .prologue
    const-string v0, "GPRS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    const-string v0, "EDGE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    return v0

    :cond_1
    const-string v0, "UMTS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    return v0

    :cond_2
    const-string v0, "IS95A"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x10

    return v0

    :cond_3
    const-string v0, "IS95B"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x20

    return v0

    :cond_4
    const-string v0, "1XRTT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x40

    return v0

    :cond_5
    const-string v0, "EVDO_0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x80

    return v0

    :cond_6
    const-string v0, "EVDO_A"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x100

    return v0

    :cond_7
    const-string v0, "HSDPA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x200

    return v0

    :cond_8
    const-string v0, "HSUPA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x400

    return v0

    :cond_9
    const-string v0, "HSPA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x800

    return v0

    :cond_a
    const-string v0, "EVDO_B"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x1000

    return v0

    :cond_b
    const-string v0, "EHRPD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x2000

    return v0

    :cond_c
    const-string v0, "LTE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x4000

    return v0

    :cond_d
    const-string v0, "HSPAP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const v0, 0x8000

    return v0

    :cond_e
    const-string v0, "GSM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/high16 v0, 0x10000

    return v0

    :cond_f
    const-string v0, "TD_SCDMA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/high16 v0, 0x20000

    return v0

    :cond_10
    const-string v0, "HS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const v0, 0x8e00

    return v0

    :cond_11
    const-string v0, "CDMA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x70

    return v0

    :cond_12
    const-string v0, "EVDO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 v0, 0x3180

    return v0

    :cond_13
    const-string v0, "WCDMA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const v0, 0x8e08

    return v0

    :cond_14
    const-string v0, "LTE_CA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/high16 v0, 0x80000

    return v0

    :cond_15
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getPhoneId()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/telephony/RadioAccessFamily;->mPhoneId:I

    return v0
.end method

.method public getRadioAccessFamily()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/telephony/RadioAccessFamily;->mRadioAccessFamily:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{ mPhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/RadioAccessFamily;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRadioAccessFamily = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/RadioAccessFamily;->mRadioAccessFamily:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "ret":Ljava/lang/String;
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "outParcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget v0, p0, Landroid/telephony/RadioAccessFamily;->mPhoneId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/RadioAccessFamily;->mRadioAccessFamily:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.class Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# static fields
.field protected static final GET_INKEY_NO:B = 0x0t

.field protected static final GET_INKEY_YES:B = 0x1t


# instance fields
.field public mInData:Ljava/lang/String;

.field private mIsPacked:Z

.field private mIsUcs2:Z

.field private mIsYesNo:Z

.field private mYesNoResponse:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "inData"    # Ljava/lang/String;
    .param p2, "ucs2"    # Z
    .param p3, "packed"    # Z

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    iput-boolean p2, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    iput-boolean p3, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    iput-object p1, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsYesNo:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "yesNoResponse"    # Z

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsYesNo:Z

    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mYesNoResponse:Z

    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 10
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v8, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v8

    or-int/lit16 v4, v8, 0x80

    .local v4, "tag":I
    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-boolean v8, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsYesNo:Z

    if-eqz v8, :cond_2

    new-array v1, v6, [B

    .local v1, "data":[B
    iget-boolean v8, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mYesNoResponse:Z

    if-eqz v8, :cond_1

    :goto_0
    aput-byte v6, v1, v7

    :goto_1
    array-length v6, v1

    add-int/lit8 v6, v6, 0x1

    const/16 v8, 0xff

    if-gt v6, v8, :cond_6

    array-length v6, v1

    add-int/lit8 v6, v6, 0x1

    invoke-static {p1, v6}, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->writeLength(Ljava/io/ByteArrayOutputStream;I)V

    :goto_2
    iget-boolean v6, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    if-eqz v6, :cond_7

    const/16 v6, 0x8

    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_3
    array-length v6, v1

    :goto_4
    if-ge v7, v6, :cond_9

    aget-byte v0, v1, v7

    .local v0, "b":B
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .end local v0    # "b":B
    :cond_1
    move v6, v7

    goto :goto_0

    .end local v1    # "data":[B
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    :try_start_0
    iget-boolean v6, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    const-string v8, "UTF-16BE"

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .restart local v1    # "data":[B
    goto :goto_1

    .end local v1    # "data":[B
    :cond_3
    iget-boolean v6, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v6, v8, v9}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;II)[B

    move-result-object v5

    .local v5, "tempData":[B
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    new-array v1, v6, [B

    .restart local v1    # "data":[B
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v5, v8, v1, v9, v6}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .end local v1    # "data":[B
    .end local v5    # "tempData":[B
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    new-array v1, v7, [B

    .restart local v1    # "data":[B
    goto :goto_1

    .end local v1    # "data":[B
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_4
    :try_start_1
    iget-object v6, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .restart local v1    # "data":[B
    goto :goto_1

    .end local v1    # "data":[B
    :catch_1
    move-exception v2

    .local v2, "e":Lcom/android/internal/telephony/EncodeException;
    new-array v1, v7, [B

    .restart local v1    # "data":[B
    goto :goto_1

    .end local v1    # "data":[B
    .end local v2    # "e":Lcom/android/internal/telephony/EncodeException;
    :cond_5
    new-array v1, v7, [B

    .restart local v1    # "data":[B
    goto :goto_1

    :cond_6
    new-array v1, v7, [B

    goto :goto_2

    :cond_7
    iget-boolean v6, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    if-eqz v6, :cond_8

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_3

    :cond_8
    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_3

    :cond_9
    return-void
.end method

.class Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;
.super Ljava/lang/Object;
.source "PasswordTransformationMethod.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/PasswordTransformationMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PasswordCharSequence"
.end annotation


# instance fields
.field private mSource:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 8
    .param p1, "i"    # I

    .prologue
    const/4 v7, 0x0

    iget-object v5, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    instance-of v5, v5, Landroid/text/Spanned;

    if-eqz v5, :cond_2

    iget-object v2, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spanned;

    .local v2, "sp":Landroid/text/Spanned;
    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v2, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .local v3, "st":I
    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v2, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .local v1, "en":I
    if-lt p1, v3, :cond_0

    if-ge p1, v1, :cond_0

    iget-object v5, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v5, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    return v5

    :cond_0
    invoke-interface {v2}, Landroid/text/Spanned;->length()I

    move-result v5

    const-class v6, Landroid/text/method/PasswordTransformationMethod$Visible;

    invoke-interface {v2, v7, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/method/PasswordTransformationMethod$Visible;

    .local v4, "visible":[Landroid/text/method/PasswordTransformationMethod$Visible;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_2

    aget-object v5, v4, v0

    invoke-static {v5}, Landroid/text/method/PasswordTransformationMethod$Visible;->-get0(Landroid/text/method/PasswordTransformationMethod$Visible;)Landroid/text/method/PasswordTransformationMethod;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_1

    aget-object v5, v4, v0

    invoke-interface {v2, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    aget-object v5, v4, v0

    invoke-interface {v2, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    if-lt p1, v3, :cond_1

    if-ge p1, v1, :cond_1

    iget-object v5, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v5, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    return v5

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "a":I
    .end local v1    # "en":I
    .end local v2    # "sp":Landroid/text/Spanned;
    .end local v3    # "st":I
    .end local v4    # "visible":[Landroid/text/method/PasswordTransformationMethod$Visible;
    :cond_2
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->-get0()C

    move-result v5

    return v5
.end method

.method public getChars(II[CI)V
    .locals 17
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # [C
    .param p4, "off"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-static {v14, v0, v1, v2, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    const/4 v10, -0x1

    .local v10, "st":I
    const/4 v5, -0x1

    .local v5, "en":I
    const/4 v8, 0x0

    .local v8, "nvisible":I
    const/4 v11, 0x0

    .local v11, "starts":[I
    const/4 v6, 0x0

    .local v6, "ends":[I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    instance-of v14, v14, Landroid/text/Spanned;

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    check-cast v9, Landroid/text/Spanned;

    .local v9, "sp":Landroid/text/Spanned;
    sget-object v14, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v9, v14}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    sget-object v14, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v9, v14}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v9}, Landroid/text/Spanned;->length()I

    move-result v14

    const-class v15, Landroid/text/method/PasswordTransformationMethod$Visible;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v9, v0, v14, v15}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/text/method/PasswordTransformationMethod$Visible;

    .local v13, "visible":[Landroid/text/method/PasswordTransformationMethod$Visible;
    array-length v8, v13

    new-array v11, v8, [I

    .local v11, "starts":[I
    new-array v6, v8, [I

    .local v6, "ends":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_1

    aget-object v14, v13, v7

    invoke-static {v14}, Landroid/text/method/PasswordTransformationMethod$Visible;->-get0(Landroid/text/method/PasswordTransformationMethod$Visible;)Landroid/text/method/PasswordTransformationMethod;

    move-result-object v14

    invoke-interface {v9, v14}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v14

    if-ltz v14, :cond_0

    aget-object v14, v13, v7

    invoke-interface {v9, v14}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v14

    aput v14, v11, v7

    aget-object v14, v13, v7

    invoke-interface {v9, v14}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v14

    aput v14, v6, v7

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .end local v6    # "ends":[I
    .end local v7    # "i":I
    .end local v9    # "sp":Landroid/text/Spanned;
    .end local v11    # "starts":[I
    .end local v13    # "visible":[Landroid/text/method/PasswordTransformationMethod$Visible;
    :cond_1
    move/from16 v7, p1

    .restart local v7    # "i":I
    :goto_1
    move/from16 v0, p2

    if-ge v7, v0, :cond_6

    if-lt v7, v10, :cond_2

    if-lt v7, v5, :cond_4

    :cond_2
    const/4 v12, 0x0

    .local v12, "visible":Z
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_2
    if-ge v4, v8, :cond_3

    aget v14, v11, v4

    if-lt v7, v14, :cond_5

    aget v14, v6, v4

    if-ge v7, v14, :cond_5

    const/4 v12, 0x1

    :cond_3
    if-nez v12, :cond_4

    sub-int v14, v7, p1

    add-int v14, v14, p4

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->-get0()C

    move-result v15

    aput-char v15, p3, v14

    .end local v4    # "a":I
    .end local v12    # "visible":Z
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .restart local v4    # "a":I
    .restart local v12    # "visible":Z
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v4    # "a":I
    .end local v12    # "visible":Z
    :cond_6
    return-void
.end method

.method public length()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    sub-int v1, p2, p1

    new-array v0, v1, [C

    .local v0, "buf":[C
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->getChars(II[CI)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

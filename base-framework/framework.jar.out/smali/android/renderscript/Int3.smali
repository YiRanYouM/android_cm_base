.class public Landroid/renderscript/Int3;
.super Ljava/lang/Object;
.source "Int3.java"


# instance fields
.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/renderscript/Int3;->z:I

    iput p1, p0, Landroid/renderscript/Int3;->y:I

    iput p1, p0, Landroid/renderscript/Int3;->x:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/renderscript/Int3;->x:I

    iput p2, p0, Landroid/renderscript/Int3;->y:I

    iput p3, p0, Landroid/renderscript/Int3;->z:I

    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Int3;)V
    .locals 1
    .param p1, "source"    # Landroid/renderscript/Int3;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/renderscript/Int3;->x:I

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    iget v0, p1, Landroid/renderscript/Int3;->y:I

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    iget v0, p1, Landroid/renderscript/Int3;->z:I

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    return-void
.end method

.method public static add(Landroid/renderscript/Int3;I)Landroid/renderscript/Int3;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Int3;
    .param p1, "b"    # I

    .prologue
    new-instance v0, Landroid/renderscript/Int3;

    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    .local v0, "result":Landroid/renderscript/Int3;
    iget v1, p0, Landroid/renderscript/Int3;->x:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->x:I

    iget v1, p0, Landroid/renderscript/Int3;->y:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->y:I

    iget v1, p0, Landroid/renderscript/Int3;->z:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->z:I

    return-object v0
.end method

.method public static add(Landroid/renderscript/Int3;Landroid/renderscript/Int3;)Landroid/renderscript/Int3;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Int3;
    .param p1, "b"    # Landroid/renderscript/Int3;

    .prologue
    new-instance v0, Landroid/renderscript/Int3;

    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    .local v0, "result":Landroid/renderscript/Int3;
    iget v1, p0, Landroid/renderscript/Int3;->x:I

    iget v2, p1, Landroid/renderscript/Int3;->x:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->x:I

    iget v1, p0, Landroid/renderscript/Int3;->y:I

    iget v2, p1, Landroid/renderscript/Int3;->y:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->y:I

    iget v1, p0, Landroid/renderscript/Int3;->z:I

    iget v2, p1, Landroid/renderscript/Int3;->z:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->z:I

    return-object v0
.end method

.method public static div(Landroid/renderscript/Int3;I)Landroid/renderscript/Int3;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Int3;
    .param p1, "b"    # I

    .prologue
    new-instance v0, Landroid/renderscript/Int3;

    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    .local v0, "result":Landroid/renderscript/Int3;
    iget v1, p0, Landroid/renderscript/Int3;->x:I

    div-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->x:I

    iget v1, p0, Landroid/renderscript/Int3;->y:I

    div-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->y:I

    iget v1, p0, Landroid/renderscript/Int3;->z:I

    div-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->z:I

    return-object v0
.end method

.method public static div(Landroid/renderscript/Int3;Landroid/renderscript/Int3;)Landroid/renderscript/Int3;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Int3;
    .param p1, "b"    # Landroid/renderscript/Int3;

    .prologue
    new-instance v0, Landroid/renderscript/Int3;

    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    .local v0, "result":Landroid/renderscript/Int3;
    iget v1, p0, Landroid/renderscript/Int3;->x:I

    iget v2, p1, Landroid/renderscript/Int3;->x:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->x:I

    iget v1, p0, Landroid/renderscript/Int3;->y:I

    iget v2, p1, Landroid/renderscript/Int3;->y:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->y:I

    iget v1, p0, Landroid/renderscript/Int3;->z:I

    iget v2, p1, Landroid/renderscript/Int3;->z:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->z:I

    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Int3;Landroid/renderscript/Int3;)I
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Int3;
    .param p1, "b"    # Landroid/renderscript/Int3;

    .prologue
    iget v0, p1, Landroid/renderscript/Int3;->x:I

    iget v1, p0, Landroid/renderscript/Int3;->x:I

    mul-int/2addr v0, v1

    iget v1, p1, Landroid/renderscript/Int3;->y:I

    iget v2, p0, Landroid/renderscript/Int3;->y:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p1, Landroid/renderscript/Int3;->z:I

    iget v2, p0, Landroid/renderscript/Int3;->z:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public static mod(Landroid/renderscript/Int3;I)Landroid/renderscript/Int3;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Int3;
    .param p1, "b"    # I

    .prologue
    new-instance v0, Landroid/renderscript/Int3;

    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    .local v0, "result":Landroid/renderscript/Int3;
    iget v1, p0, Landroid/renderscript/Int3;->x:I

    rem-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->x:I

    iget v1, p0, Landroid/renderscript/Int3;->y:I

    rem-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->y:I

    iget v1, p0, Landroid/renderscript/Int3;->z:I

    rem-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->z:I

    return-object v0
.end method

.method public static mod(Landroid/renderscript/Int3;Landroid/renderscript/Int3;)Landroid/renderscript/Int3;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Int3;
    .param p1, "b"    # Landroid/renderscript/Int3;

    .prologue
    new-instance v0, Landroid/renderscript/Int3;

    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    .local v0, "result":Landroid/renderscript/Int3;
    iget v1, p0, Landroid/renderscript/Int3;->x:I

    iget v2, p1, Landroid/renderscript/Int3;->x:I

    rem-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->x:I

    iget v1, p0, Landroid/renderscript/Int3;->y:I

    iget v2, p1, Landroid/renderscript/Int3;->y:I

    rem-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->y:I

    iget v1, p0, Landroid/renderscript/Int3;->z:I

    iget v2, p1, Landroid/renderscript/Int3;->z:I

    rem-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->z:I

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Int3;I)Landroid/renderscript/Int3;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Int3;
    .param p1, "b"    # I

    .prologue
    new-instance v0, Landroid/renderscript/Int3;

    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    .local v0, "result":Landroid/renderscript/Int3;
    iget v1, p0, Landroid/renderscript/Int3;->x:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->x:I

    iget v1, p0, Landroid/renderscript/Int3;->y:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->y:I

    iget v1, p0, Landroid/renderscript/Int3;->z:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->z:I

    return-object v0
.end method

.method public static mul(Landroid/renderscript/Int3;Landroid/renderscript/Int3;)Landroid/renderscript/Int3;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Int3;
    .param p1, "b"    # Landroid/renderscript/Int3;

    .prologue
    new-instance v0, Landroid/renderscript/Int3;

    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    .local v0, "result":Landroid/renderscript/Int3;
    iget v1, p0, Landroid/renderscript/Int3;->x:I

    iget v2, p1, Landroid/renderscript/Int3;->x:I

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->x:I

    iget v1, p0, Landroid/renderscript/Int3;->y:I

    iget v2, p1, Landroid/renderscript/Int3;->y:I

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->y:I

    iget v1, p0, Landroid/renderscript/Int3;->z:I

    iget v2, p1, Landroid/renderscript/Int3;->z:I

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->z:I

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Int3;I)Landroid/renderscript/Int3;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Int3;
    .param p1, "b"    # I

    .prologue
    new-instance v0, Landroid/renderscript/Int3;

    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    .local v0, "result":Landroid/renderscript/Int3;
    iget v1, p0, Landroid/renderscript/Int3;->x:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->x:I

    iget v1, p0, Landroid/renderscript/Int3;->y:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->y:I

    iget v1, p0, Landroid/renderscript/Int3;->z:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->z:I

    return-object v0
.end method

.method public static sub(Landroid/renderscript/Int3;Landroid/renderscript/Int3;)Landroid/renderscript/Int3;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Int3;
    .param p1, "b"    # Landroid/renderscript/Int3;

    .prologue
    new-instance v0, Landroid/renderscript/Int3;

    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    .local v0, "result":Landroid/renderscript/Int3;
    iget v1, p0, Landroid/renderscript/Int3;->x:I

    iget v2, p1, Landroid/renderscript/Int3;->x:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->x:I

    iget v1, p0, Landroid/renderscript/Int3;->y:I

    iget v2, p1, Landroid/renderscript/Int3;->y:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->y:I

    iget v1, p0, Landroid/renderscript/Int3;->z:I

    iget v2, p1, Landroid/renderscript/Int3;->z:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->z:I

    return-object v0
.end method


# virtual methods
.method public add(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    iget v0, p0, Landroid/renderscript/Int3;->y:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    iget v0, p0, Landroid/renderscript/Int3;->z:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    return-void
.end method

.method public add(Landroid/renderscript/Int3;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Int3;

    .prologue
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    iget v1, p1, Landroid/renderscript/Int3;->x:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    iget v0, p0, Landroid/renderscript/Int3;->y:I

    iget v1, p1, Landroid/renderscript/Int3;->y:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    iget v0, p0, Landroid/renderscript/Int3;->z:I

    iget v1, p1, Landroid/renderscript/Int3;->z:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    return-void
.end method

.method public addAt(II)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # I

    .prologue
    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    return-void

    :pswitch_1
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    return-void

    :pswitch_2
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public addMultiple(Landroid/renderscript/Int3;I)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Int3;
    .param p2, "factor"    # I

    .prologue
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    iget v1, p1, Landroid/renderscript/Int3;->x:I

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    iget v0, p0, Landroid/renderscript/Int3;->y:I

    iget v1, p1, Landroid/renderscript/Int3;->y:I

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    iget v0, p0, Landroid/renderscript/Int3;->z:I

    iget v1, p1, Landroid/renderscript/Int3;->z:I

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    return-void
.end method

.method public copyTo([II)V
    .locals 2
    .param p1, "data"    # [I
    .param p2, "offset"    # I

    .prologue
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    aput v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Landroid/renderscript/Int3;->y:I

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    iget v1, p0, Landroid/renderscript/Int3;->z:I

    aput v1, p1, v0

    return-void
.end method

.method public div(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    div-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    iget v0, p0, Landroid/renderscript/Int3;->y:I

    div-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    iget v0, p0, Landroid/renderscript/Int3;->z:I

    div-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    return-void
.end method

.method public div(Landroid/renderscript/Int3;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Int3;

    .prologue
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    iget v1, p1, Landroid/renderscript/Int3;->x:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    iget v0, p0, Landroid/renderscript/Int3;->y:I

    iget v1, p1, Landroid/renderscript/Int3;->y:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    iget v0, p0, Landroid/renderscript/Int3;->z:I

    iget v1, p1, Landroid/renderscript/Int3;->z:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    return-void
.end method

.method public dotProduct(Landroid/renderscript/Int3;)I
    .locals 3
    .param p1, "a"    # Landroid/renderscript/Int3;

    .prologue
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    iget v1, p1, Landroid/renderscript/Int3;->x:I

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Int3;->y:I

    iget v2, p1, Landroid/renderscript/Int3;->y:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Int3;->z:I

    iget v2, p1, Landroid/renderscript/Int3;->z:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public elementSum()I
    .locals 2

    .prologue
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    iget v1, p0, Landroid/renderscript/Int3;->y:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Int3;->z:I

    add-int/2addr v0, v1

    return v0
.end method

.method public get(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    return v0

    :pswitch_1
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    return v0

    :pswitch_2
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public length()I
    .locals 1

    .prologue
    const/4 v0, 0x3

    return v0
.end method

.method public mod(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    rem-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    iget v0, p0, Landroid/renderscript/Int3;->y:I

    rem-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    iget v0, p0, Landroid/renderscript/Int3;->z:I

    rem-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    return-void
.end method

.method public mod(Landroid/renderscript/Int3;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Int3;

    .prologue
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    iget v1, p1, Landroid/renderscript/Int3;->x:I

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    iget v0, p0, Landroid/renderscript/Int3;->y:I

    iget v1, p1, Landroid/renderscript/Int3;->y:I

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    iget v0, p0, Landroid/renderscript/Int3;->z:I

    iget v1, p1, Landroid/renderscript/Int3;->z:I

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    return-void
.end method

.method public mul(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    mul-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    iget v0, p0, Landroid/renderscript/Int3;->y:I

    mul-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    iget v0, p0, Landroid/renderscript/Int3;->z:I

    mul-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    return-void
.end method

.method public mul(Landroid/renderscript/Int3;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Int3;

    .prologue
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    iget v1, p1, Landroid/renderscript/Int3;->x:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    iget v0, p0, Landroid/renderscript/Int3;->y:I

    iget v1, p1, Landroid/renderscript/Int3;->y:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    iget v0, p0, Landroid/renderscript/Int3;->z:I

    iget v1, p1, Landroid/renderscript/Int3;->z:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    return-void
.end method

.method public negate()V
    .locals 1

    .prologue
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    neg-int v0, v0

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    iget v0, p0, Landroid/renderscript/Int3;->y:I

    neg-int v0, v0

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    iget v0, p0, Landroid/renderscript/Int3;->z:I

    neg-int v0, v0

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    return-void
.end method

.method public set(Landroid/renderscript/Int3;)V
    .locals 1
    .param p1, "a"    # Landroid/renderscript/Int3;

    .prologue
    iget v0, p1, Landroid/renderscript/Int3;->x:I

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    iget v0, p1, Landroid/renderscript/Int3;->y:I

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    iget v0, p1, Landroid/renderscript/Int3;->z:I

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    return-void
.end method

.method public setAt(II)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # I

    .prologue
    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iput p2, p0, Landroid/renderscript/Int3;->x:I

    return-void

    :pswitch_1
    iput p2, p0, Landroid/renderscript/Int3;->y:I

    return-void

    :pswitch_2
    iput p2, p0, Landroid/renderscript/Int3;->z:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setValues(III)V
    .locals 0
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I

    .prologue
    iput p1, p0, Landroid/renderscript/Int3;->x:I

    iput p2, p0, Landroid/renderscript/Int3;->y:I

    iput p3, p0, Landroid/renderscript/Int3;->z:I

    return-void
.end method

.method public sub(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    iget v0, p0, Landroid/renderscript/Int3;->y:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    iget v0, p0, Landroid/renderscript/Int3;->z:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    return-void
.end method

.method public sub(Landroid/renderscript/Int3;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Int3;

    .prologue
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    iget v1, p1, Landroid/renderscript/Int3;->x:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    iget v0, p0, Landroid/renderscript/Int3;->y:I

    iget v1, p1, Landroid/renderscript/Int3;->y:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    iget v0, p0, Landroid/renderscript/Int3;->z:I

    iget v1, p1, Landroid/renderscript/Int3;->z:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    return-void
.end method

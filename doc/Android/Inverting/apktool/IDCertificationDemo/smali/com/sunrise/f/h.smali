.class public Lcom/sunrise/f/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sunrise/e/s;
.implements Lcom/sunrise/f/ap;


# static fields
.field public static final a:Lcom/sunrise/f/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunrise/f/h;

    invoke-direct {v0}, Lcom/sunrise/f/h;-><init>()V

    sput-object v0, Lcom/sunrise/f/h;->a:Lcom/sunrise/f/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Class;)Z
    .locals 1

    const-class v0, Ljava/awt/Point;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/awt/Rectangle;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/awt/Font;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/awt/Color;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/sunrise/f/az;Ljava/lang/Class;C)C
    .locals 1

    sget-object v0, Lcom/sunrise/f/ba;->o:Lcom/sunrise/f/ba;

    invoke-virtual {p1, v0}, Lcom/sunrise/f/az;->a(Lcom/sunrise/f/ba;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Lcom/sunrise/f/az;->write(I)V

    sget-object v0, Lcom/sunrise/a/a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sunrise/f/az;->c(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sunrise/f/az;->a(Ljava/lang/String;)V

    const/16 p3, 0x2c

    :cond_0
    return p3
.end method

.method protected a(Lcom/sunrise/d/a;)Ljava/awt/Font;
    .locals 8

    const/4 v1, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x2

    iget-object v3, p1, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    const/4 v0, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v3}, Lcom/sunrise/d/d;->a()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_1

    invoke-interface {v3}, Lcom/sunrise/d/d;->d()V

    new-instance v3, Ljava/awt/Font;

    invoke-direct {v3, v0, v1, v2}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    return-object v3

    :cond_1
    invoke-interface {v3}, Lcom/sunrise/d/d;->a()I

    move-result v4

    if-ne v4, v7, :cond_2

    invoke-interface {v3}, Lcom/sunrise/d/d;->l()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v6}, Lcom/sunrise/d/d;->b(I)V

    const-string v5, "name"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Lcom/sunrise/d/d;->a()I

    move-result v0

    if-ne v0, v7, :cond_3

    invoke-interface {v3}, Lcom/sunrise/d/d;->l()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3}, Lcom/sunrise/d/d;->d()V

    :goto_1
    invoke-interface {v3}, Lcom/sunrise/d/d;->a()I

    move-result v4

    const/16 v5, 0x10

    if-ne v4, v5, :cond_0

    invoke-interface {v3, v7}, Lcom/sunrise/d/d;->a(I)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string v5, "style"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Lcom/sunrise/d/d;->a()I

    move-result v1

    if-ne v1, v6, :cond_5

    invoke-interface {v3}, Lcom/sunrise/d/d;->n()I

    move-result v1

    invoke-interface {v3}, Lcom/sunrise/d/d;->d()V

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const-string v2, "size"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v3}, Lcom/sunrise/d/d;->a()I

    move-result v2

    if-ne v2, v6, :cond_7

    invoke-interface {v3}, Lcom/sunrise/d/d;->n()I

    move-result v2

    invoke-interface {v3}, Lcom/sunrise/d/d;->d()V

    goto :goto_1

    :cond_7
    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Lcom/sunrise/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/16 v3, 0x10

    iget-object v0, p1, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v0}, Lcom/sunrise/d/d;->a()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    invoke-interface {v0, v3}, Lcom/sunrise/d/d;->a(I)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/sunrise/d/d;->a()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1

    invoke-interface {v0}, Lcom/sunrise/d/d;->a()I

    move-result v1

    if-eq v1, v3, :cond_1

    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-interface {v0}, Lcom/sunrise/d/d;->d()V

    const-class v0, Ljava/awt/Point;

    if-ne p2, v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/sunrise/f/h;->d(Lcom/sunrise/d/a;)Ljava/awt/Point;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-class v0, Ljava/awt/Rectangle;

    if-ne p2, v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/sunrise/f/h;->c(Lcom/sunrise/d/a;)Ljava/awt/Rectangle;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-class v0, Ljava/awt/Color;

    if-ne p2, v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/sunrise/f/h;->b(Lcom/sunrise/d/a;)Ljava/awt/Color;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-class v0, Ljava/awt/Font;

    if-ne p2, v0, :cond_5

    invoke-virtual {p0, p1}, Lcom/sunrise/f/h;->a(Lcom/sunrise/d/a;)Ljava/awt/Font;

    move-result-object v0

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/sunrise/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support awt class : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/sunrise/f/af;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0x2c

    iget-object v0, p1, Lcom/sunrise/f/af;->b:Lcom/sunrise/f/az;

    if-nez p2, :cond_0

    invoke-virtual {v0}, Lcom/sunrise/f/az;->b()V

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x7b

    instance-of v2, p2, Ljava/awt/Point;

    if-eqz v2, :cond_2

    check-cast p2, Ljava/awt/Point;

    const-class v2, Ljava/awt/Point;

    invoke-virtual {p0, v0, v2, v1}, Lcom/sunrise/f/h;->a(Lcom/sunrise/f/az;Ljava/lang/Class;C)C

    move-result v1

    const-string v2, "x"

    invoke-virtual {p2}, Ljava/awt/Point;->getX()D

    move-result-wide v4

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/sunrise/f/az;->a(CLjava/lang/String;D)V

    const-string v1, "y"

    invoke-virtual {p2}, Ljava/awt/Point;->getY()D

    move-result-wide v2

    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/sunrise/f/az;->a(CLjava/lang/String;D)V

    :cond_1
    :goto_1
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Lcom/sunrise/f/az;->write(I)V

    goto :goto_0

    :cond_2
    instance-of v2, p2, Ljava/awt/Font;

    if-eqz v2, :cond_3

    check-cast p2, Ljava/awt/Font;

    const-class v2, Ljava/awt/Font;

    invoke-virtual {p0, v0, v2, v1}, Lcom/sunrise/f/h;->a(Lcom/sunrise/f/az;Ljava/lang/Class;C)C

    move-result v1

    const-string v2, "name"

    invoke-virtual {p2}, Ljava/awt/Font;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sunrise/f/az;->a(CLjava/lang/String;Ljava/lang/String;)V

    const-string v1, "style"

    invoke-virtual {p2}, Ljava/awt/Font;->getStyle()I

    move-result v2

    invoke-virtual {v0, v6, v1, v2}, Lcom/sunrise/f/az;->a(CLjava/lang/String;I)V

    const-string v1, "size"

    invoke-virtual {p2}, Ljava/awt/Font;->getSize()I

    move-result v2

    invoke-virtual {v0, v6, v1, v2}, Lcom/sunrise/f/az;->a(CLjava/lang/String;I)V

    goto :goto_1

    :cond_3
    instance-of v2, p2, Ljava/awt/Rectangle;

    if-eqz v2, :cond_4

    check-cast p2, Ljava/awt/Rectangle;

    const-class v2, Ljava/awt/Rectangle;

    invoke-virtual {p0, v0, v2, v1}, Lcom/sunrise/f/h;->a(Lcom/sunrise/f/az;Ljava/lang/Class;C)C

    move-result v1

    const-string v2, "x"

    invoke-virtual {p2}, Ljava/awt/Rectangle;->getX()D

    move-result-wide v4

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/sunrise/f/az;->a(CLjava/lang/String;D)V

    const-string v1, "y"

    invoke-virtual {p2}, Ljava/awt/Rectangle;->getY()D

    move-result-wide v2

    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/sunrise/f/az;->a(CLjava/lang/String;D)V

    const-string v1, "width"

    invoke-virtual {p2}, Ljava/awt/Rectangle;->getWidth()D

    move-result-wide v2

    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/sunrise/f/az;->a(CLjava/lang/String;D)V

    const-string v1, "height"

    invoke-virtual {p2}, Ljava/awt/Rectangle;->getHeight()D

    move-result-wide v2

    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/sunrise/f/az;->a(CLjava/lang/String;D)V

    goto :goto_1

    :cond_4
    instance-of v2, p2, Ljava/awt/Color;

    if-eqz v2, :cond_5

    check-cast p2, Ljava/awt/Color;

    const-class v2, Ljava/awt/Color;

    invoke-virtual {p0, v0, v2, v1}, Lcom/sunrise/f/h;->a(Lcom/sunrise/f/az;Ljava/lang/Class;C)C

    move-result v1

    const-string v2, "r"

    invoke-virtual {p2}, Ljava/awt/Color;->getRed()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sunrise/f/az;->a(CLjava/lang/String;I)V

    const-string v1, "g"

    invoke-virtual {p2}, Ljava/awt/Color;->getGreen()I

    move-result v2

    invoke-virtual {v0, v6, v1, v2}, Lcom/sunrise/f/az;->a(CLjava/lang/String;I)V

    const-string v1, "b"

    invoke-virtual {p2}, Ljava/awt/Color;->getBlue()I

    move-result v2

    invoke-virtual {v0, v6, v1, v2}, Lcom/sunrise/f/az;->a(CLjava/lang/String;I)V

    invoke-virtual {p2}, Ljava/awt/Color;->getAlpha()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "alpha"

    invoke-virtual {p2}, Ljava/awt/Color;->getAlpha()I

    move-result v2

    invoke-virtual {v0, v6, v1, v2}, Lcom/sunrise/f/az;->a(CLjava/lang/String;I)V

    goto/16 :goto_1

    :cond_5
    new-instance v0, Lcom/sunrise/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support awt class : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a_()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method protected b(Lcom/sunrise/d/a;)Ljava/awt/Color;
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v0, 0x0

    iget-object v5, p1, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    move v1, v0

    move v2, v0

    move v3, v0

    :cond_0
    :goto_0
    invoke-interface {v5}, Lcom/sunrise/d/d;->a()I

    move-result v4

    const/16 v6, 0xd

    if-ne v4, v6, :cond_1

    invoke-interface {v5}, Lcom/sunrise/d/d;->d()V

    new-instance v4, Ljava/awt/Color;

    invoke-direct {v4, v3, v2, v1, v0}, Ljava/awt/Color;-><init>(IIII)V

    return-object v4

    :cond_1
    invoke-interface {v5}, Lcom/sunrise/d/d;->a()I

    move-result v4

    if-ne v4, v9, :cond_2

    invoke-interface {v5}, Lcom/sunrise/d/d;->l()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v8}, Lcom/sunrise/d/d;->b(I)V

    invoke-interface {v5}, Lcom/sunrise/d/d;->a()I

    move-result v4

    if-ne v4, v8, :cond_3

    invoke-interface {v5}, Lcom/sunrise/d/d;->n()I

    move-result v4

    invoke-interface {v5}, Lcom/sunrise/d/d;->d()V

    const-string v7, "r"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v3, v4

    :goto_1
    invoke-interface {v5}, Lcom/sunrise/d/d;->a()I

    move-result v4

    const/16 v6, 0x10

    if-ne v4, v6, :cond_0

    invoke-interface {v5, v9}, Lcom/sunrise/d/d;->a(I)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string v7, "g"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v2, v4

    goto :goto_1

    :cond_5
    const-string v7, "b"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    move v1, v4

    goto :goto_1

    :cond_6
    const-string v0, "alpha"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v4

    goto :goto_1

    :cond_7
    new-instance v0, Lcom/sunrise/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected c(Lcom/sunrise/d/a;)Ljava/awt/Rectangle;
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v0, 0x0

    iget-object v5, p1, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    move v1, v0

    move v2, v0

    move v3, v0

    :cond_0
    :goto_0
    invoke-interface {v5}, Lcom/sunrise/d/d;->a()I

    move-result v4

    const/16 v6, 0xd

    if-ne v4, v6, :cond_1

    invoke-interface {v5}, Lcom/sunrise/d/d;->d()V

    new-instance v4, Ljava/awt/Rectangle;

    invoke-direct {v4, v3, v2, v1, v0}, Ljava/awt/Rectangle;-><init>(IIII)V

    return-object v4

    :cond_1
    invoke-interface {v5}, Lcom/sunrise/d/d;->a()I

    move-result v4

    if-ne v4, v9, :cond_2

    invoke-interface {v5}, Lcom/sunrise/d/d;->l()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v8}, Lcom/sunrise/d/d;->b(I)V

    invoke-interface {v5}, Lcom/sunrise/d/d;->a()I

    move-result v4

    if-ne v4, v8, :cond_3

    invoke-interface {v5}, Lcom/sunrise/d/d;->n()I

    move-result v4

    invoke-interface {v5}, Lcom/sunrise/d/d;->d()V

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v3, v4

    :goto_1
    invoke-interface {v5}, Lcom/sunrise/d/d;->a()I

    move-result v4

    const/16 v6, 0x10

    if-ne v4, v6, :cond_0

    invoke-interface {v5, v9}, Lcom/sunrise/d/d;->a(I)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string v7, "y"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v2, v4

    goto :goto_1

    :cond_5
    const-string v7, "width"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    move v1, v4

    goto :goto_1

    :cond_6
    const-string v0, "height"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v4

    goto :goto_1

    :cond_7
    new-instance v0, Lcom/sunrise/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected d(Lcom/sunrise/d/a;)Ljava/awt/Point;
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v0, 0x0

    iget-object v3, p1, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v3}, Lcom/sunrise/d/d;->a()I

    move-result v2

    const/16 v4, 0xd

    if-ne v2, v4, :cond_1

    invoke-interface {v3}, Lcom/sunrise/d/d;->d()V

    new-instance v2, Ljava/awt/Point;

    invoke-direct {v2, v1, v0}, Ljava/awt/Point;-><init>(II)V

    return-object v2

    :cond_1
    invoke-interface {v3}, Lcom/sunrise/d/d;->a()I

    move-result v2

    if-ne v2, v7, :cond_3

    invoke-interface {v3}, Lcom/sunrise/d/d;->l()Ljava/lang/String;

    move-result-object v4

    sget-object v2, Lcom/sunrise/a/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "java.awt.Point"

    invoke-virtual {p1, v2}, Lcom/sunrise/d/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-interface {v3, v6}, Lcom/sunrise/d/d;->b(I)V

    invoke-interface {v3}, Lcom/sunrise/d/d;->a()I

    move-result v2

    if-ne v2, v6, :cond_4

    invoke-interface {v3}, Lcom/sunrise/d/d;->n()I

    move-result v2

    invoke-interface {v3}, Lcom/sunrise/d/d;->d()V

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v1, v2

    :goto_1
    invoke-interface {v3}, Lcom/sunrise/d/d;->a()I

    move-result v2

    const/16 v4, 0x10

    if-ne v2, v4, :cond_0

    invoke-interface {v3, v7}, Lcom/sunrise/d/d;->a(I)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lcom/sunrise/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v3}, Lcom/sunrise/d/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const-string v0, "y"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    goto :goto_1

    :cond_6
    new-instance v0, Lcom/sunrise/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

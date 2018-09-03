.class public Lcom/sunrise/f/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sunrise/e/s;
.implements Lcom/sunrise/f/ap;


# static fields
.field public static final a:Lcom/sunrise/f/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunrise/f/n;

    invoke-direct {v0}, Lcom/sunrise/f/n;-><init>()V

    sput-object v0, Lcom/sunrise/f/n;->a:Lcom/sunrise/f/n;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lcom/sunrise/f/u;->a:Lcom/sunrise/f/u;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sunrise/f/u;->a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Calendar;

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/util/Date;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v1}, Lcom/sunrise/d/d;->v()Ljava/util/TimeZone;

    move-result-object v2

    invoke-interface {v1}, Lcom/sunrise/d/d;->w()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public a(Lcom/sunrise/f/af;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p1, Lcom/sunrise/f/af;->b:Lcom/sunrise/f/az;

    if-nez p2, :cond_0

    invoke-virtual {v2}, Lcom/sunrise/f/az;->b()V

    :goto_0
    return-void

    :cond_0
    check-cast p2, Ljava/util/Calendar;

    sget-object v0, Lcom/sunrise/f/ba;->f:Lcom/sunrise/f/ba;

    invoke-virtual {v2, v0}, Lcom/sunrise/f/az;->a(Lcom/sunrise/f/ba;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/sunrise/f/ba;->b:Lcom/sunrise/f/ba;

    invoke-virtual {v2, v0}, Lcom/sunrise/f/az;->a(Lcom/sunrise/f/ba;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x27

    :goto_1
    invoke-virtual {v2, v0}, Lcom/sunrise/f/az;->a(C)Lcom/sunrise/f/az;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v4, v1, 0x1

    const/4 v1, 0x5

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v1, 0xb

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v1, 0xc

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/16 v1, 0xd

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/16 v1, 0xe

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v9

    if-eqz v9, :cond_2

    const-string v1, "0000-00-00T00:00:00.000"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/16 v10, 0x17

    invoke-static {v9, v10, v1}, Lcom/sunrise/h/d;->a(II[C)V

    const/16 v9, 0x13

    invoke-static {v8, v9, v1}, Lcom/sunrise/h/d;->a(II[C)V

    const/16 v8, 0x10

    invoke-static {v7, v8, v1}, Lcom/sunrise/h/d;->a(II[C)V

    const/16 v7, 0xd

    invoke-static {v6, v7, v1}, Lcom/sunrise/h/d;->a(II[C)V

    const/16 v6, 0xa

    invoke-static {v5, v6, v1}, Lcom/sunrise/h/d;->a(II[C)V

    const/4 v5, 0x7

    invoke-static {v4, v5, v1}, Lcom/sunrise/h/d;->a(II[C)V

    const/4 v4, 0x4

    invoke-static {v3, v4, v1}, Lcom/sunrise/h/d;->a(II[C)V

    :goto_2
    invoke-virtual {v2, v1}, Lcom/sunrise/f/az;->write([C)V

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    const v3, 0x36ee80

    div-int/2addr v1, v3

    if-nez v1, :cond_4

    const-string v1, "Z"

    invoke-virtual {v2, v1}, Lcom/sunrise/f/az;->a(Ljava/lang/CharSequence;)Lcom/sunrise/f/az;

    :goto_3
    invoke-virtual {v2, v0}, Lcom/sunrise/f/az;->a(C)Lcom/sunrise/f/az;

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x22

    goto :goto_1

    :cond_2
    if-nez v8, :cond_3

    if-nez v7, :cond_3

    if-nez v6, :cond_3

    const-string v1, "0000-00-00"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/16 v6, 0xa

    invoke-static {v5, v6, v1}, Lcom/sunrise/h/d;->a(II[C)V

    const/4 v5, 0x7

    invoke-static {v4, v5, v1}, Lcom/sunrise/h/d;->a(II[C)V

    const/4 v4, 0x4

    invoke-static {v3, v4, v1}, Lcom/sunrise/h/d;->a(II[C)V

    goto :goto_2

    :cond_3
    const-string v1, "0000-00-00T00:00:00"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/16 v9, 0x13

    invoke-static {v8, v9, v1}, Lcom/sunrise/h/d;->a(II[C)V

    const/16 v8, 0x10

    invoke-static {v7, v8, v1}, Lcom/sunrise/h/d;->a(II[C)V

    const/16 v7, 0xd

    invoke-static {v6, v7, v1}, Lcom/sunrise/h/d;->a(II[C)V

    const/16 v6, 0xa

    invoke-static {v5, v6, v1}, Lcom/sunrise/h/d;->a(II[C)V

    const/4 v5, 0x7

    invoke-static {v4, v5, v1}, Lcom/sunrise/h/d;->a(II[C)V

    const/4 v4, 0x4

    invoke-static {v3, v4, v1}, Lcom/sunrise/h/d;->a(II[C)V

    goto :goto_2

    :cond_4
    if-lez v1, :cond_5

    const-string v3, "+"

    invoke-virtual {v2, v3}, Lcom/sunrise/f/az;->a(Ljava/lang/CharSequence;)Lcom/sunrise/f/az;

    move-result-object v3

    const-string v4, "%02d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/sunrise/f/az;->a(Ljava/lang/CharSequence;)Lcom/sunrise/f/az;

    move-result-object v1

    const-string v3, ":00"

    invoke-virtual {v1, v3}, Lcom/sunrise/f/az;->a(Ljava/lang/CharSequence;)Lcom/sunrise/f/az;

    goto :goto_3

    :cond_5
    const-string v3, "-"

    invoke-virtual {v2, v3}, Lcom/sunrise/f/az;->a(Ljava/lang/CharSequence;)Lcom/sunrise/f/az;

    move-result-object v3

    const-string v4, "%02d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    neg-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/sunrise/f/az;->a(Ljava/lang/CharSequence;)Lcom/sunrise/f/az;

    move-result-object v1

    const-string v3, ":00"

    invoke-virtual {v1, v3}, Lcom/sunrise/f/az;->a(Ljava/lang/CharSequence;)Lcom/sunrise/f/az;

    goto/16 :goto_3

    :cond_6
    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sunrise/f/af;->c(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public a_()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

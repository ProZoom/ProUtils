.class public Lcom/sunrise/f/u;
.super Lcom/sunrise/e/c;

# interfaces
.implements Lcom/sunrise/e/s;
.implements Lcom/sunrise/f/ap;


# static fields
.field public static final a:Lcom/sunrise/f/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunrise/f/u;

    invoke-direct {v0}, Lcom/sunrise/f/u;-><init>()V

    sput-object v0, Lcom/sunrise/f/u;->a:Lcom/sunrise/f/u;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sunrise/e/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    if-nez p4, :cond_1

    move-object p4, v0

    :cond_0
    :goto_0
    return-object p4

    :cond_1
    instance-of v1, p4, Ljava/util/Date;

    if-nez v1, :cond_0

    instance-of v1, p4, Ljava/lang/Number;

    if-eqz v1, :cond_2

    new-instance v0, Ljava/util/Date;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    move-object p4, v0

    goto :goto_0

    :cond_2
    instance-of v1, p4, Ljava/lang/String;

    if-eqz v1, :cond_8

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    move-object p4, v0

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/sunrise/d/g;

    invoke-direct {v1, p4}, Lcom/sunrise/d/g;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, v0}, Lcom/sunrise/d/g;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Lcom/sunrise/d/g;->D()Ljava/util/Calendar;

    move-result-object p4

    const-class v0, Ljava/util/Calendar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p2, v0, :cond_4

    invoke-virtual {v1}, Lcom/sunrise/d/g;->close()V

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-virtual {p4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p4

    invoke-virtual {v1}, Lcom/sunrise/d/g;->close()V

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Lcom/sunrise/d/g;->close()V

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Lcom/sunrise/d/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_6

    invoke-virtual {p1}, Lcom/sunrise/d/a;->b()Ljava/text/DateFormat;

    move-result-object v0

    :try_start_2
    invoke-virtual {v0, p4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object p4

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/sunrise/d/g;->close()V

    throw v0

    :catch_0
    move-exception v0

    :cond_6
    const-string v0, "/Date("

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, ")/"

    invoke-virtual {p4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    :cond_7
    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    new-instance p4, Ljava/util/Date;

    invoke-direct {p4, v0, v1}, Ljava/util/Date;-><init>(J)V

    goto/16 :goto_0

    :cond_8
    new-instance v0, Lcom/sunrise/a/d;

    const-string v1, "parse error"

    invoke-direct {v0, v1}, Lcom/sunrise/a/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/sunrise/f/af;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v4, p1, Lcom/sunrise/f/af;->b:Lcom/sunrise/f/az;

    if-nez p2, :cond_0

    invoke-virtual {v4}, Lcom/sunrise/f/az;->b()V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p2

    instance-of v2, v0, Ljava/util/Date;

    if-eqz v2, :cond_2

    move-object/from16 v2, p2

    check-cast v2, Ljava/util/Date;

    :goto_1
    sget-object v3, Lcom/sunrise/f/ba;->s:Lcom/sunrise/f/ba;

    invoke-virtual {v4, v3}, Lcom/sunrise/f/az;->a(Lcom/sunrise/f/ba;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/sunrise/f/af;->b()Ljava/text/DateFormat;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v5, Lcom/sunrise/a/a;->e:Ljava/lang/String;

    iget-object v6, p1, Lcom/sunrise/f/af;->f:Ljava/util/Locale;

    invoke-direct {v3, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v5, p1, Lcom/sunrise/f/af;->e:Ljava/util/TimeZone;

    invoke-virtual {v3, v5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_1
    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/sunrise/f/az;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static/range {p2 .. p2}, Lcom/sunrise/h/k;->i(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v2

    goto :goto_1

    :cond_3
    sget-object v3, Lcom/sunrise/f/ba;->o:Lcom/sunrise/f/ba;

    invoke-virtual {v4, v3}, Lcom/sunrise/f/az;->a(Lcom/sunrise/f/ba;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object/from16 v0, p4

    if-eq v3, v0, :cond_5

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/util/Date;

    if-ne v2, v3, :cond_4

    const-string v2, "new Date("

    invoke-virtual {v4, v2}, Lcom/sunrise/f/az;->write(Ljava/lang/String;)V

    check-cast p2, Ljava/util/Date;

    invoke-virtual/range {p2 .. p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Lcom/sunrise/f/az;->a(J)V

    const/16 v2, 0x29

    invoke-virtual {v4, v2}, Lcom/sunrise/f/az;->write(I)V

    goto :goto_0

    :cond_4
    const/16 v2, 0x7b

    invoke-virtual {v4, v2}, Lcom/sunrise/f/az;->write(I)V

    sget-object v2, Lcom/sunrise/a/a;->c:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/sunrise/f/az;->c(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/sunrise/f/af;->b(Ljava/lang/String;)V

    const/16 v2, 0x2c

    const-string v3, "val"

    check-cast p2, Ljava/util/Date;

    invoke-virtual/range {p2 .. p2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v4, v2, v3, v6, v7}, Lcom/sunrise/f/az;->a(CLjava/lang/String;J)V

    const/16 v2, 0x7d

    invoke-virtual {v4, v2}, Lcom/sunrise/f/az;->write(I)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sget-object v2, Lcom/sunrise/f/ba;->f:Lcom/sunrise/f/ba;

    invoke-virtual {v4, v2}, Lcom/sunrise/f/az;->a(Lcom/sunrise/f/ba;)Z

    move-result v2

    if-eqz v2, :cond_b

    sget-object v2, Lcom/sunrise/f/ba;->b:Lcom/sunrise/f/ba;

    invoke-virtual {v4, v2}, Lcom/sunrise/f/az;->a(Lcom/sunrise/f/ba;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x27

    :goto_2
    invoke-virtual {v4, v2}, Lcom/sunrise/f/az;->write(I)V

    iget-object v3, p1, Lcom/sunrise/f/af;->e:Ljava/util/TimeZone;

    iget-object v5, p1, Lcom/sunrise/f/af;->f:Ljava/util/Locale;

    invoke-static {v3, v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v3, 0x2

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v7, v3, 0x1

    const/4 v3, 0x5

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/16 v3, 0xb

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/16 v3, 0xc

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/16 v3, 0xd

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v11

    const/16 v3, 0xe

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v12

    if-eqz v12, :cond_7

    const-string v3, "0000-00-00T00:00:00.000"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    const/16 v13, 0x17

    invoke-static {v12, v13, v3}, Lcom/sunrise/h/d;->a(II[C)V

    const/16 v12, 0x13

    invoke-static {v11, v12, v3}, Lcom/sunrise/h/d;->a(II[C)V

    const/16 v11, 0x10

    invoke-static {v10, v11, v3}, Lcom/sunrise/h/d;->a(II[C)V

    const/16 v10, 0xd

    invoke-static {v9, v10, v3}, Lcom/sunrise/h/d;->a(II[C)V

    const/16 v9, 0xa

    invoke-static {v8, v9, v3}, Lcom/sunrise/h/d;->a(II[C)V

    const/4 v8, 0x7

    invoke-static {v7, v8, v3}, Lcom/sunrise/h/d;->a(II[C)V

    const/4 v7, 0x4

    invoke-static {v6, v7, v3}, Lcom/sunrise/h/d;->a(II[C)V

    :goto_3
    invoke-virtual {v4, v3}, Lcom/sunrise/f/az;->write([C)V

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    const v5, 0x36ee80

    div-int/2addr v3, v5

    if-nez v3, :cond_9

    const/16 v3, 0x5a

    invoke-virtual {v4, v3}, Lcom/sunrise/f/az;->write(I)V

    :goto_4
    invoke-virtual {v4, v2}, Lcom/sunrise/f/az;->write(I)V

    goto/16 :goto_0

    :cond_6
    const/16 v2, 0x22

    goto :goto_2

    :cond_7
    if-nez v11, :cond_8

    if-nez v10, :cond_8

    if-nez v9, :cond_8

    const-string v3, "0000-00-00"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    const/16 v9, 0xa

    invoke-static {v8, v9, v3}, Lcom/sunrise/h/d;->a(II[C)V

    const/4 v8, 0x7

    invoke-static {v7, v8, v3}, Lcom/sunrise/h/d;->a(II[C)V

    const/4 v7, 0x4

    invoke-static {v6, v7, v3}, Lcom/sunrise/h/d;->a(II[C)V

    goto :goto_3

    :cond_8
    const-string v3, "0000-00-00T00:00:00"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    const/16 v12, 0x13

    invoke-static {v11, v12, v3}, Lcom/sunrise/h/d;->a(II[C)V

    const/16 v11, 0x10

    invoke-static {v10, v11, v3}, Lcom/sunrise/h/d;->a(II[C)V

    const/16 v10, 0xd

    invoke-static {v9, v10, v3}, Lcom/sunrise/h/d;->a(II[C)V

    const/16 v9, 0xa

    invoke-static {v8, v9, v3}, Lcom/sunrise/h/d;->a(II[C)V

    const/4 v8, 0x7

    invoke-static {v7, v8, v3}, Lcom/sunrise/h/d;->a(II[C)V

    const/4 v7, 0x4

    invoke-static {v6, v7, v3}, Lcom/sunrise/h/d;->a(II[C)V

    goto :goto_3

    :cond_9
    if-lez v3, :cond_a

    const/16 v5, 0x2b

    invoke-virtual {v4, v5}, Lcom/sunrise/f/az;->a(C)Lcom/sunrise/f/az;

    move-result-object v5

    const-string v6, "%02d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/sunrise/f/az;->a(Ljava/lang/CharSequence;)Lcom/sunrise/f/az;

    :goto_5
    const-string v3, ":00"

    invoke-virtual {v4, v3}, Lcom/sunrise/f/az;->a(Ljava/lang/CharSequence;)Lcom/sunrise/f/az;

    goto :goto_4

    :cond_a
    const/16 v5, 0x2d

    invoke-virtual {v4, v5}, Lcom/sunrise/f/az;->a(C)Lcom/sunrise/f/az;

    move-result-object v5

    const-string v6, "%02d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    neg-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/sunrise/f/az;->a(Ljava/lang/CharSequence;)Lcom/sunrise/f/az;

    goto :goto_5

    :cond_b
    invoke-virtual {v4, v6, v7}, Lcom/sunrise/f/az;->a(J)V

    goto/16 :goto_0
.end method

.method public a_()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

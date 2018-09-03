.class public Lcom/sunrise/e/p;
.super Lcom/sunrise/e/f;

# interfaces
.implements Lcom/sunrise/e/s;
.implements Lcom/sunrise/f/ap;
.implements Lcom/sunrise/f/s;


# static fields
.field public static final a:Lcom/sunrise/e/p;

.field private static final b:Ljava/time/format/DateTimeFormatter;

.field private static final c:Ljava/time/format/DateTimeFormatter;

.field private static final d:Ljava/time/format/DateTimeFormatter;

.field private static final e:Ljava/time/format/DateTimeFormatter;

.field private static final f:Ljava/time/format/DateTimeFormatter;

.field private static final g:Ljava/time/format/DateTimeFormatter;

.field private static final h:Ljava/time/format/DateTimeFormatter;

.field private static final i:Ljava/time/format/DateTimeFormatter;

.field private static final j:Ljava/time/format/DateTimeFormatter;

.field private static final k:Ljava/time/format/DateTimeFormatter;

.field private static final l:Ljava/time/format/DateTimeFormatter;

.field private static final m:Ljava/time/format/DateTimeFormatter;

.field private static final n:Ljava/time/format/DateTimeFormatter;

.field private static final o:Ljava/time/format/DateTimeFormatter;

.field private static final p:Ljava/time/format/DateTimeFormatter;

.field private static final q:Ljava/time/format/DateTimeFormatter;

.field private static final r:Ljava/time/format/DateTimeFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunrise/e/p;

    invoke-direct {v0}, Lcom/sunrise/e/p;-><init>()V

    sput-object v0, Lcom/sunrise/e/p;->a:Lcom/sunrise/e/p;

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/sunrise/e/p;->b:Ljava/time/format/DateTimeFormatter;

    const-string v0, "yyyy/MM/dd HH:mm:ss"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/sunrise/e/p;->c:Ljava/time/format/DateTimeFormatter;

    const-string v0, "yyyy\u5e74M\u6708d\u65e5 HH:mm:ss"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/sunrise/e/p;->d:Ljava/time/format/DateTimeFormatter;

    const-string v0, "yyyy\u5e74M\u6708d\u65e5 H\u65f6m\u5206s\u79d2"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/sunrise/e/p;->e:Ljava/time/format/DateTimeFormatter;

    const-string v0, "yyyy\ub144M\uc6d4d\uc77c HH:mm:ss"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/sunrise/e/p;->f:Ljava/time/format/DateTimeFormatter;

    const-string v0, "MM/dd/yyyy HH:mm:ss"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/sunrise/e/p;->g:Ljava/time/format/DateTimeFormatter;

    const-string v0, "dd/MM/yyyy HH:mm:ss"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/sunrise/e/p;->h:Ljava/time/format/DateTimeFormatter;

    const-string v0, "dd.MM.yyyy HH:mm:ss"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/sunrise/e/p;->i:Ljava/time/format/DateTimeFormatter;

    const-string v0, "dd-MM-yyyy HH:mm:ss"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/sunrise/e/p;->j:Ljava/time/format/DateTimeFormatter;

    const-string v0, "yyyyMMdd"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/sunrise/e/p;->k:Ljava/time/format/DateTimeFormatter;

    const-string v0, "yyyy/MM/dd"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/sunrise/e/p;->l:Ljava/time/format/DateTimeFormatter;

    const-string v0, "yyyy\u5e74M\u6708d\u65e5"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/sunrise/e/p;->m:Ljava/time/format/DateTimeFormatter;

    const-string v0, "yyyy\ub144M\uc6d4d\uc77c"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/sunrise/e/p;->n:Ljava/time/format/DateTimeFormatter;

    const-string v0, "MM/dd/yyyy"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/sunrise/e/p;->o:Ljava/time/format/DateTimeFormatter;

    const-string v0, "dd/MM/yyyy"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/sunrise/e/p;->p:Ljava/time/format/DateTimeFormatter;

    const-string v0, "dd.MM.yyyy"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/sunrise/e/p;->q:Ljava/time/format/DateTimeFormatter;

    const-string v0, "dd-MM-yyyy"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/sunrise/e/p;->r:Ljava/time/format/DateTimeFormatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sunrise/e/f;-><init>()V

    return-void
.end method

.method private a(Lcom/sunrise/f/az;Ljava/time/temporal/TemporalAccessor;Ljava/lang/String;)V
    .locals 1

    invoke-static {p3}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sunrise/f/az;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 5

    const/4 v1, 0x0

    const/16 v4, 0x17

    iget-object v0, p1, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v0}, Lcom/sunrise/d/d;->a()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_d

    invoke-interface {v0}, Lcom/sunrise/d/d;->l()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/sunrise/d/d;->d()V

    if-eqz p4, :cond_f

    invoke-static {p4}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    :goto_0
    const-class v3, Ljava/time/LocalDateTime;

    if-ne p2, v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xa

    if-eq v1, v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_1

    :cond_0
    invoke-virtual {p0, v2, p4, v0}, Lcom/sunrise/e/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object v0

    sget-object v1, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {p0, v2, v0}, Lcom/sunrise/e/p;->a(Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-class v3, Ljava/time/LocalDate;

    if-ne p2, v3, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v4, :cond_3

    invoke-static {v2}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getYear()I

    move-result v1

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v2

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v0

    invoke-static {v1, v2, v0}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v2, p4, v0}, Lcom/sunrise/e/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-class v0, Ljava/time/LocalTime;

    if-ne p2, v0, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v4, :cond_5

    invoke-static {v2}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getHour()I

    move-result v1

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v2

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v3

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getNano()I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-static {v2}, Ljava/time/LocalTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalTime;

    move-result-object v0

    goto :goto_1

    :cond_6
    const-class v0, Ljava/time/ZonedDateTime;

    if-ne p2, v0, :cond_7

    invoke-static {v2}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v0

    goto :goto_1

    :cond_7
    const-class v0, Ljava/time/OffsetDateTime;

    if-ne p2, v0, :cond_8

    invoke-static {v2}, Ljava/time/OffsetDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/OffsetDateTime;

    move-result-object v0

    goto :goto_1

    :cond_8
    const-class v0, Ljava/time/OffsetTime;

    if-ne p2, v0, :cond_9

    invoke-static {v2}, Ljava/time/OffsetTime;->parse(Ljava/lang/CharSequence;)Ljava/time/OffsetTime;

    move-result-object v0

    goto :goto_1

    :cond_9
    const-class v0, Ljava/time/ZoneId;

    if-ne p2, v0, :cond_a

    invoke-static {v2}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v0

    goto :goto_1

    :cond_a
    const-class v0, Ljava/time/Period;

    if-ne p2, v0, :cond_b

    invoke-static {v2}, Ljava/time/Period;->parse(Ljava/lang/CharSequence;)Ljava/time/Period;

    move-result-object v0

    goto :goto_1

    :cond_b
    const-class v0, Ljava/time/Duration;

    if-ne p2, v0, :cond_c

    invoke-static {v2}, Ljava/time/Duration;->parse(Ljava/lang/CharSequence;)Ljava/time/Duration;

    move-result-object v0

    goto/16 :goto_1

    :cond_c
    const-class v0, Ljava/time/Instant;

    if-ne p2, v0, :cond_e

    invoke-static {v2}, Ljava/time/Instant;->parse(Ljava/lang/CharSequence;)Ljava/time/Instant;

    move-result-object v0

    goto/16 :goto_1

    :cond_d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_e
    move-object v0, v1

    goto/16 :goto_1

    :cond_f
    move-object v0, v1

    goto/16 :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;
    .locals 11

    const/16 v10, 0x2e

    const/16 v9, 0x2d

    const/16 v8, 0xc

    const/4 v7, 0x4

    const/16 v6, 0x2f

    if-nez p3, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    sget-object p3, Lcom/sunrise/e/p;->k:Ljava/time/format/DateTimeFormatter;

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v0, v6, :cond_1

    if-ne v1, v6, :cond_1

    sget-object p3, Lcom/sunrise/e/p;->l:Ljava/time/format/DateTimeFormatter;

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v3, v6, :cond_8

    if-ne v5, v6, :cond_8

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v1, v2

    add-int/lit8 v2, v4, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v0, v0, -0x30

    add-int/2addr v0, v2

    if-le v1, v8, :cond_4

    sget-object p3, Lcom/sunrise/e/p;->p:Ljava/time/format/DateTimeFormatter;

    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_3

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5e74

    if-ne v0, v1, :cond_a

    sget-object p3, Lcom/sunrise/e/p;->m:Ljava/time/format/DateTimeFormatter;

    :cond_3
    :goto_1
    if-nez p3, :cond_b

    invoke-static {p1}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_4
    if-le v0, v8, :cond_5

    sget-object p3, Lcom/sunrise/e/p;->o:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object p3, Lcom/sunrise/e/p;->o:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    :cond_6
    const-string v1, "BR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "AU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_7
    sget-object p3, Lcom/sunrise/e/p;->p:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    :cond_8
    if-ne v3, v10, :cond_9

    if-ne v5, v10, :cond_9

    sget-object p3, Lcom/sunrise/e/p;->q:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    :cond_9
    if-ne v3, v9, :cond_2

    if-ne v5, v9, :cond_2

    sget-object p3, Lcom/sunrise/e/p;->r:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    :cond_a
    const v1, 0xb144

    if-ne v0, v1, :cond_3

    sget-object p3, Lcom/sunrise/e/p;->n:Ljava/time/format/DateTimeFormatter;

    goto :goto_1

    :cond_b
    invoke-static {p1, p3}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object v0

    goto :goto_2
.end method

.method protected a(Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;
    .locals 11

    const/16 v10, 0x2e

    const/16 v9, 0xc

    const/4 v8, 0x4

    const/16 v7, 0x2f

    const/16 v6, 0x2d

    if-nez p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xd

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x10

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3a

    if-ne v3, v5, :cond_0

    const/16 v3, 0x3a

    if-ne v4, v3, :cond_0

    if-ne v0, v6, :cond_3

    if-ne v1, v6, :cond_3

    const/16 v0, 0x54

    if-ne v2, v0, :cond_2

    sget-object p2, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5e74

    if-ne v0, v1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x79d2

    if-ne v0, v1, :cond_c

    sget-object p2, Lcom/sunrise/e/p;->e:Ljava/time/format/DateTimeFormatter;

    :cond_1
    :goto_1
    if-nez p2, :cond_e

    invoke-static {p1}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_2
    const/16 v0, 0x20

    if-ne v2, v0, :cond_0

    sget-object p2, Lcom/sunrise/e/p;->b:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    :cond_3
    if-ne v0, v6, :cond_4

    if-ne v1, v6, :cond_4

    sget-object p2, Lcom/sunrise/e/p;->b:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    :cond_4
    if-ne v0, v7, :cond_5

    if-ne v1, v7, :cond_5

    sget-object p2, Lcom/sunrise/e/p;->c:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v3, v7, :cond_a

    if-ne v5, v7, :cond_a

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v1, v2

    add-int/lit8 v2, v4, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v0, v0, -0x30

    add-int/2addr v0, v2

    if-le v1, v9, :cond_6

    sget-object p2, Lcom/sunrise/e/p;->h:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    :cond_6
    if-le v0, v9, :cond_7

    sget-object p2, Lcom/sunrise/e/p;->g:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    :cond_7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object p2, Lcom/sunrise/e/p;->g:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_0

    :cond_8
    const-string v1, "BR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "AU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_9
    sget-object p2, Lcom/sunrise/e/p;->h:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_0

    :cond_a
    if-ne v3, v10, :cond_b

    if-ne v5, v10, :cond_b

    sget-object p2, Lcom/sunrise/e/p;->i:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_0

    :cond_b
    if-ne v3, v6, :cond_0

    if-ne v5, v6, :cond_0

    sget-object p2, Lcom/sunrise/e/p;->j:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_0

    :cond_c
    sget-object p2, Lcom/sunrise/e/p;->d:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_1

    :cond_d
    const v1, 0xb144

    if-ne v0, v1, :cond_1

    sget-object p2, Lcom/sunrise/e/p;->f:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_1

    :cond_e
    invoke-static {p1, p2}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object v0

    goto/16 :goto_2
.end method

.method public a(Lcom/sunrise/f/af;Ljava/lang/Object;Lcom/sunrise/f/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lcom/sunrise/f/af;->b:Lcom/sunrise/f/az;

    invoke-virtual {p3}, Lcom/sunrise/f/i;->b()Ljava/lang/String;

    move-result-object v1

    check-cast p2, Ljava/time/temporal/TemporalAccessor;

    invoke-direct {p0, v0, p2, v1}, Lcom/sunrise/e/p;->a(Lcom/sunrise/f/az;Ljava/time/temporal/TemporalAccessor;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/sunrise/f/af;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 3
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
    const-class v0, Ljava/time/LocalDateTime;

    if-ne p4, v0, :cond_3

    move-object v0, p2

    check-cast v0, Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getNano()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/sunrise/f/af;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/sunrise/a/a;->e:Ljava/lang/String;

    :cond_1
    invoke-direct {p0, v2, v0, v1}, Lcom/sunrise/e/p;->a(Lcom/sunrise/f/az;Ljava/time/temporal/TemporalAccessor;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sunrise/f/az;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sunrise/f/az;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a_()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

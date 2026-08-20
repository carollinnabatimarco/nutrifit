import 'package:flutter/material.dart';
import 'nutrifit_style.dart';

class NutriFitPage extends StatelessWidget {
  const NutriFitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),

          child: Column(
            children: [

              const SizedBox(height: 5),

              Image.asset(
                'assets/images/nutrifit.png',

                // LOGO MAIOR
                width: 390,
                height: 250,

                fit: BoxFit.contain,
              ),

              const SizedBox(height: 0),

              Text(
                'NUTRIÇÃO QUE TRANSFORMA',
                style: NutriFitStyle.brandSubtitle,
              ),

              const SizedBox(height: 30),

              Container(
                margin: const EdgeInsets.symmetric(horizontal: 24),

                padding: const EdgeInsets.symmetric(
                  horizontal: 22,
                  vertical: 22,
                ),

                decoration: BoxDecoration(
                  color: const Color(0xFFF5F8EF),
                  borderRadius: BorderRadius.circular(25),
                ),

                child: Column(
                  children: [

                    RichText(
                      textAlign: TextAlign.center,

                      text: TextSpan(
                        style: NutriFitStyle.presentation,

                        children: const [

                          TextSpan(
                            text: 'A NutriFit ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          TextSpan(
                            text:
                            'é uma empresa dedicada a promover '
                                'uma alimentação saudável, equilibrada '
                                'e personalizada. Oferecemos soluções '
                                'em nutrição para ajudar você a cuidar '
                                'da saúde e alcançar seus objetivos '
                                'de forma leve e prática.',
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 15),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [

                        Container(
                          width: 50,
                          height: 1,
                          color: NutriFitStyle.lightGreen,
                        ),

                        const SizedBox(width: 12),

                        const Icon(
                          Icons.favorite,
                          color: NutriFitStyle.primaryGreen,
                          size: 19,
                        ),

                        const SizedBox(width: 12),

                        Container(
                          width: 50,
                          height: 1,
                          color: NutriFitStyle.lightGreen,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              Container(
                margin: const EdgeInsets.symmetric(horizontal: 18),

                height: 265,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),

                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.07),
                      blurRadius: 12,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),

                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),

                  child: Image.asset(
                    'assets/images/prato.png',

                    width: double.infinity,
                    height: double.infinity,

                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const SizedBox(height: 18),

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 22,
                ),

                child: Row(
                  children: [

                    const Icon(
                      Icons.eco_outlined,
                      color: NutriFitStyle.lightGreen,
                      size: 25,
                    ),

                    const SizedBox(width: 7),

                    Expanded(
                      child: Text(
                        'Sabor que nutre. Escolhas que transformam.',

                        textAlign: TextAlign.center,

                        style: NutriFitStyle.slogan,
                      ),
                    ),

                    const SizedBox(width: 7),

                    const Icon(
                      Icons.eco_outlined,
                      color: NutriFitStyle.lightGreen,
                      size: 25,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 32),


              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                ),

                child: Row(
                  children: [

                    Expanded(
                      child: Container(
                        height: 1,
                        color: NutriFitStyle.lightGreen,
                      ),
                    ),

                    const SizedBox(width: 10),

                    const Icon(
                      Icons.eco,
                      color: NutriFitStyle.primaryGreen,
                      size: 22,
                    ),

                    const SizedBox(width: 7),

                    Text(
                      'O que oferecemos',
                      style: NutriFitStyle.sectionTitle,
                    ),

                    const SizedBox(width: 10),

                    Expanded(
                      child: Container(
                        height: 1,
                        color: NutriFitStyle.lightGreen,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 18),


              const ServiceCard(
                icon: Icons.person_outline,
                title: 'Consulta Nutricional',
              ),

              const ServiceCard(
                icon: Icons.assignment_outlined,
                title: 'Plano Alimentar Personalizado',
              ),

              const ServiceCard(
                icon: Icons.calendar_month_outlined,
                title: 'Acompanhamento Semanal',
              ),

              const ServiceCard(
                icon: Icons.monitor_weight_outlined,
                title: 'Bioimpedância',
              ),

              const ServiceCard(
                icon: Icons.restaurant_menu_outlined,
                title: 'Receitas Fit',
              ),

              const SizedBox(height: 25),

              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final IconData icon;
  final String title;

  const ServiceCard({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 6,
      ),

      padding: const EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 11,
      ),

      decoration: BoxDecoration(
        color: Colors.white,

        borderRadius: BorderRadius.circular(18),

        border: Border.all(
          color: const Color(0xFFE5ECD9),
        ),

        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.045),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),

      child: Row(
        children: [

          // ÍCONE
          Container(
            width: 55,
            height: 55,

            decoration: BoxDecoration(
              color: NutriFitStyle.iconBackground,
              borderRadius: BorderRadius.circular(16),
            ),

            child: Icon(
              icon,
              color: NutriFitStyle.primaryGreen,
              size: 29,
            ),
          ),

          const SizedBox(width: 16),

          Expanded(
            child: Text(
              title,
              style: NutriFitStyle.serviceTitle,
            ),
          ),

          // SETA
          const Icon(
            Icons.chevron_right,
            color: NutriFitStyle.primaryGreen,
            size: 28,
          ),
        ],
      ),
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 125,

      child: Stack(
        clipBehavior: Clip.hardEdge,

        children: [

          Positioned(
            bottom: 0,
            left: -30,
            right: -30,

            child: Container(
              height: 100,

              decoration: const BoxDecoration(
                color: Color(0xFFE4F0D1),

                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(150),
                  topRight: Radius.circular(110),
                ),
              ),
            ),
          ),


          Positioned(
            bottom: -5,
            left: -80,
            right: -80,

            child: Container(
              height: 65,

              decoration: const BoxDecoration(
                color: Color(0xFFC3DB9B),

                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(150),
                  topRight: Radius.circular(150),
                ),
              ),
            ),
          ),

          Positioned(
            bottom: -15,
            left: -100,
            right: -100,

            child: Container(
              height: 45,

              decoration: const BoxDecoration(
                color: NutriFitStyle.mediumGreen,

                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(180),
                  topRight: Radius.circular(180),
                ),
              ),
            ),
          ),

          Positioned(
            bottom: 28,
            left: 0,
            right: 0,

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                Container(
                  width: 42,
                  height: 42,

                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.35),
                    shape: BoxShape.circle,
                  ),

                  child: const Icon(
                    Icons.favorite_border,
                    color: NutriFitStyle.primaryGreen,
                    size: 25,
                  ),
                ),

                const SizedBox(width: 12),

                Container(
                  width: 1,
                  height: 27,
                  color: NutriFitStyle.primaryGreen
                      .withOpacity(0.4),
                ),

                const SizedBox(width: 12),

                const Flexible(
                  child: Text(
                    'Cuidar de você é o nosso propósito.',

                    style: NutriFitStyle.footer,

                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
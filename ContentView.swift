//
//  ContentView.swift
//  third
//
//  Created by Joseph Hayes on 29/03/2024.
//
// ContentView.swift
import SwiftUI

struct ContentView: View {
    @ObservedObject private var viewModel = ContentViewModel()
    @State private var isSurahMulkExpanded = false // State variable to track the dropdown state
    
    var body: some View {
        ZStack {
            // Background gradient resembling a desert sky
            LinearGradient(gradient: Gradient(colors: [Color(red: 204/255, green: 229/255, blue: 255/255), Color(red: 153/255, green: 204/255, blue: 255/255)]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading) {
                Text("Night Supplication")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.top, 20)
                    .padding(.leading, 20)
                
                Text(viewModel.islamicDate)
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0/255, green: 121/255, blue: 153/255)) // Different color for Islamic date
                    .padding(.leading, 20)
                    .padding(.bottom, 20)

                HStack {
                    PrayerTimeView(title: "Fajr", time: viewModel.fajrTime)
                    PrayerTimeView(title: "Maghrib", time: viewModel.maghribTime)
                }
                .padding(.horizontal)

                Spacer()

                // Animated dropdown for Surah Mulk
                VStack(alignment: .leading, spacing: 20) {
                    Text("Surah Al-Mulk Translation:")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(.leading, 20)
                        .onTapGesture {
                            withAnimation {
                                isSurahMulkExpanded.toggle()
                            }
                        }
                    
                    if isSurahMulkExpanded {
                        ScrollView {
                            Text("""
                            1. Blessed is He in Whose Hand is the dominion, and He is Able to do all things.
                                             
                            2. Who has created death and life, that He may test you which of you is best in deed. And He is the All-Mighty, the Oft-Forgiving;

                            3. Who has created the seven heavens one above another, you can see no fault in the creations of the Most Beneficent. Then look again: "Can you see any rifts?"

                            4. Then look again and yet again, your sight will return to you in a state of humiliation and worn out.

                            5. And indeed We have adorned the nearest heaven with lamps, and We have made such lamps (as) missiles to drive away the Shayatin (devils), and have prepared for them the torment of the blazing Fire.

                            6. And for those who disbelieve in their Lord (Allah) is the torment of Hell, and worst indeed is that destination.

                            7. When they are cast therein, they will hear the (terrible) drawing in of its breath as it blazes forth.

                            8. It almost bursts up with fury. Every time a group is cast therein, its keeper will ask: "Did no warner come to you?"

                            9. They will say: "Yes indeed; a warner did come to us, but we belied him and said: 'Allah never sent down anything (of revelation), you are only in great error.'"

                            10. And they will say: "Had we but listened or used our intelligence, we would not have been among the dwellers of the blazing Fire!"

                            11. Then they will confess their sin. So, away with the dwellers of the blazing Fire.

                            12. Verily! Those who fear their Lord unseen (i.e. they do not see Him, nor His Punishment in the Hereafter, etc.), theirs will be forgiveness and a great reward (i.e. Paradise).

                            13. And whether you keep your talk secret or disclose it, verily, He is the All-Knower of what is in the breasts (of men).

                            14. Should not He Who has created know? And He is the Most Kind and Courteous (to His slaves) All-Aware (of everything).

                            15. He it is, Who has made the earth subservient to you (i.e. easy for you to walk, to live and to do agriculture on it, etc.), so walk in the path thereof and eat of His provision, and to Him will be the Resurrection.

                            16. Do you feel secure that He, Who is over the heaven (Allah), will not cause the earth to sink with you, then behold it shakes (as in an earthquake)?

                            17. Or do you feel secure that He, Who is over the heaven (Allah), will not send against you a violent whirlwind? Then you shall know how (terrible) has been My Warning?

                            18. And indeed those before them belied (the Messengers of Allah), then how terrible was My denial (punishment)?

                            19. Do they not see the birds above them, spreading out their wings and folding them in? None upholds them except the Most Beneficent (Allah). Verily, He is the All-Seer of everything.

                            20. Who is he besides the Most Beneficent that can be an army to you to help you? The disbelievers are in nothing but delusion.

                            21. Who is he that can provide for you if He should withhold His provision? Nay, but they continue to be in pride, and (they) flee (from the truth).

                            22. Is he who walks without seeing on his face, more rightly guided, or he who (sees and) walks on a Straight Way (i.e. Islamic Monotheism).

                            23. Say it is He Who has created you, and endowed you with hearing (ears), seeing (eyes), and hearts. Little thanks you give.

                            24. Say: "It is He Who has created you from the earth, and to Him shall you be gathered (in the Hereafter)."

                            25. They say: "When will this promise (i.e. the Day of Resurrection) come to pass? if you are telling the truth."

                            26. Say (O Muhammad ): "The knowledge (of its exact time) is with Allah only, and I am only a plain warner."

                            27. But when they will see it (the torment on the Day of Resurrection) approaching, the faces of those who disbelieve will be different (black, sad, and in grieve), and it will be said (to them): "This is (the promise) which you were calling for!"

                            28. Say (O Muhammad ): "Tell me! If Allah destroys me, and those with me, or He bestows His Mercy on us, - who can save the disbelievers from a painful torment?"

                            29. Say: "He is the Most Beneficent (Allah), in Him we believe, and in Him we put our trust. So you will come to know who is it that is in manifest error."

                            30. Say (O Muhammad ): "Tell me! If (all) your water were to be sunk away, who then can supply you with flowing (spring) water?"
                            """)
                        }
                        .foregroundColor(.black) // Change text color to black for better readability
                        .padding()
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(Color.white) // Apply white background to the text box
                        .cornerRadius(10) // Add corner radius for rounded corners
                        .padding(.horizontal, 20)
                    }
                }
                .padding(.bottom, 20)
            }
        }
        .navigationTitle("")
        .navigationBarHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}









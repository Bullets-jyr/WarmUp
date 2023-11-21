//
//  Onboarding1.swift
//  WarmUp
//
//  Created by xinapse on 11/21/23.
//

import SwiftUI

struct OnboardingSample: View {
    
    let onboardingTitle: String
    
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            Text(onboardingTitle)
        }
    }
}

#Preview {
    OnboardingSample(onboardingTitle: "온보딩 테스트")
}

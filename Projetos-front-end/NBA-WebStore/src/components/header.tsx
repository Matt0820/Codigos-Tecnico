import React from "react";
import { useFonts } from "expo-font";
import { Image, Text, StyleSheet, TouchableOpacity, View } from "react-native";
import { SafeAreaView } from "react-native-safe-area-context";
import { Ionicons } from '@expo/vector-icons';
import { BebasNeue_400Regular } from "@expo-google-fonts/bebas-neue";

import IconeNba from '../../assets/adaptive-icon.png'
import { Cores } from "../theme/cores";

export default function Header() {
  const [fontsLoaded] = useFonts({
    BebasNeue_400Regular,
  });

  if (!fontsLoaded) {
    return null; // ou pode retornar null
  }
  return (
    <SafeAreaView style={estilos.container}>
      <View style={estilos.topo}>
        <Image source={IconeNba} style={estilos.imagem} />
        <Text style={estilos.texto}>NBA Web-Store</Text>
      </View>

      <View style={estilos.nav}>
        <TouchableOpacity><Ionicons name='person' size={35} color={Cores.BRANCO} /></TouchableOpacity>
        <TouchableOpacity><Ionicons name='settings' size={35} color={Cores.BRANCO} /></TouchableOpacity>
        <TouchableOpacity><Ionicons name='menu' size={35} color={Cores.BRANCO} /></TouchableOpacity>
      </View>
    </SafeAreaView>

  );
}

const estilos = StyleSheet.create({
  container: {
    backgroundColor: Cores.VERMELHO_NBA,
    padding: 10,
    paddingBottom: 0,
    display: 'flex',
    flexDirection: 'column'
  },
  imagem: {
    width: 50,
    height: 70
  },
  nav: {
    flexDirection: 'row',
    justifyContent: 'space-around',
    width: '100%',
  },
  topo: {
    alignItems: 'center',
    marginBottom: 20,
    display: 'flex',
    flexDirection: 'row',
    justifyContent: 'center'
  },
  texto: {
    color: Cores.BRANCO,
    fontSize: 20,
    fontWeight: 'bold',
    fontFamily: 'BebasNeue_400Regular',
  }
})
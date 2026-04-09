
import React, {useState} from 'react';
import { StatusBar } from 'expo-status-bar';
import { StyleSheet, Text, TextInput, View } from 'react-native';
import { SafeAreaProvider } from 'react-native-safe-area-context';
import Header from './src/components/header';

export default function App() {
  const [texto, setTexto] = useState('');
  return (
    <SafeAreaProvider>
      <Header />
      <TextInput
              style={styles.input}
              placeholder="Digite seu texto aqui"
              onChangeText={novoTexto => setTexto(novoTexto)}
               />
    </SafeAreaProvider>
  );
}
const styles = StyleSheet.create({
  input: {
    height: 40,
    borderColor: 'gray',
    borderWidth: 1,
    paddingHorizontal: 10,
  },
});
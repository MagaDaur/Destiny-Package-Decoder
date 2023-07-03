// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:38 2023
Texture3D<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

cbuffer cb10 : register(b10)
{
  float4 cb10[2];
}

cbuffer cb9 : register(b9)
{
  float4 cb9[64];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[13];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[166];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = cb0[89].x + 0.5;
  r0.x = (uint)r0.x;
  r0.x = cmp((uint)vThreadID.x < (uint)r0.x);
  if (r0.x != 0) {
    r0.x = (uint)cb0[99].x;
    r0.y = (uint)cb0[90].x;
    r0.z = (uint)vThreadID.x << 2;
    r0.y = (int)r0.z + (int)r0.y;
    r1.xyzw = t2.Load(r0.y).xyzw;
    r2.xyz = (int3)r0.yyy + int3(2,1,3);
    r3.xyzw = t2.Load(r2.x).xyzw;
    r2.xyw = t2.Load(r2.y).xyz;
    r4.xyz = t2.Load(r2.z).xyz;
    r0.y = cb10[1].x + 0.25;
    r0.w = cmp(cb0[23].x < cb0[24].x);
    r0.w = r0.w ? cb0[23].x : 0;
    r0.yw = (int2)r0.yw;
    r0.y = (int)r0.w + (int)r0.y;
    r0.w = cb0[22].x / cb0[5].w;
    r3.x = r3.x + r0.w;
    r5.xyz = float3(0.5,0.5,0.5) + r2.xyw;
    r5.xyz = t3.SampleLevel(s1_s, r5.xyz, 0).xyz;
    r5.xyz = r5.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r5.xyz = cb0[22].xxx * r5.xyz;
    r5.xyz = r5.xyz * float3(5,5,5) + r1.xyz;
    r6.xyz = cb0[164].xyz * cb0[163].xxx;
    r5.xyz = r6.xyz * float3(-0.400000006,-0.400000006,-0.400000006) + r5.xyz;
    r0.w = saturate(cb0[165].x + cb0[165].x);
    r0.w = 1 + -r0.w;
    r5.yzw = r5.xyz * r0.www;
    r6.xyz = cb0[146].xxx * r5.yzw;
    r7.xyz = r5.yzw * cb0[146].xxx + r2.xyw;
    r0.w = cb0[165].x * r3.y;
    r3.z = r0.w * 6.28318548 + r3.z;
    r0.w = dot(r1.xyz, r1.xyz);
    r0.w = sqrt(r0.w);
    r2.z = 9.99999975e-006 + r0.w;
    r8.xyz = r1.xyz / r2.zzz;
    r8.xyz = r8.xyz * float3(0.5,0.5,0.5) + r2.xyw;
    r0.w = cmp(0.00100000005 < r0.w);
    r8.xyz = r0.www ? r8.xyz : r2.xyw;
    r0.w = dot(r5.yzw, r5.yzw);
    r0.w = sqrt(r0.w);
    r2.z = 9.99999975e-006 + r0.w;
    r9.xyz = r5.yzw / r2.zzz;
    r9.xyz = r9.xyz * float3(0.5,0.5,0.5) + r7.xyz;
    r0.w = cmp(0.00100000005 < r0.w);
    r9.xyz = r0.www ? r9.xyz : r7.xyz;
    r10.xyz = cb12[1].xyw * r8.yyy;
    r8.xyw = cb12[0].xyw * r8.xxx + r10.xyz;
    r8.xyz = cb12[2].xyw * r8.zzz + r8.xyw;
    r8.xyz = cb12[3].xyw + r8.xyz;
    r10.xyz = cb12[1].xyw * r9.yyy;
    r9.xyw = cb12[0].xyw * r9.xxx + r10.xyz;
    r9.xyz = cb12[2].xyw * r9.zzz + r9.xyw;
    r9.xyz = cb12[3].xyw + r9.xyz;
    r8.xy = r8.xy / r8.zz;
    r8.xy = r8.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r9.xy = r9.xy / r9.zz;
    r9.xy = r9.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r8.xy = cb12[12].xy * r8.xy;
    r10.xy = (int2)r8.xy;
    r10.zw = float2(0,0);
    r0.w = t1.Load(r10.xyw).x;
    r0.w = r0.w * cb0[0].y + cb0[0].x;
    r0.w = 1 / r0.w;
    r8.xy = cb12[12].xy * r9.xy;
    r11.xy = (int2)r8.xy;
    r11.zw = float2(0,0);
    r2.z = t1.Load(r11.xyw).x;
    r2.z = r2.z * cb0[0].y + cb0[0].x;
    r2.z = 1 / r2.z;
    r8.xyw = t0.Load(r10.xyz).xyz;
    r8.xyw = r8.xyw * float3(2,2,2) + float3(-1,-1,-1);
    r6.w = dot(r8.xyw, r8.xyw);
    r6.w = rsqrt(r6.w);
    r8.xyw = r8.xyw * r6.www;
    r9.xyw = t0.Load(r11.xyz).xyz;
    r9.xyw = r9.xyw * float3(2,2,2) + float3(-1,-1,-1);
    r6.w = dot(r9.xyw, r9.xyw);
    r6.w = rsqrt(r6.w);
    r9.xyw = r9.xyw * r6.www;
    r6.w = -r2.z + r0.w;
    r7.w = dot(r8.xyw, r9.xyw);
    r7.w = 1 + -r7.w;
    r0.w = r0.w + -r8.z;
    r2.z = r2.z + -r9.z;
    r8.x = r2.z * r0.w;
    r8.x = cmp(r8.x < 0);
    r6.w = cmp(abs(r6.w) < 2.5);
    r6.w = r6.w ? r8.x : 0;
    r7.w = cmp(r7.w < 0.600000024);
    r6.w = r6.w ? r7.w : 0;
    r7.w = abs(r2.z) + abs(r0.w);
    r0.w = abs(r0.w) / r7.w;
    r5.x = cb0[22].x + r1.w;
    r1.w = dot(r9.xyw, r5.yzw);
    r7.w = r1.w + r1.w;
    r8.xyz = -r7.www * r9.xyw + r5.yzw;
    r8.yzw = float3(0.5,0.5,0.5) * r8.xyz;
    r6.xyz = r0.www * r6.xyz + r2.xyw;
    r0.w = 1 + -r0.w;
    r10.xyz = r8.yzw * r0.www;
    r6.xyz = r10.xyz * cb0[22].xxx + r6.xyz;
    r6.xyz = r6.www ? r6.xyz : r7.xyz;
    r8.x = 0;
    r7.xyzw = r6.wwww ? r8.yzwx : r5.yzwx;
    r0.w = cmp(abs(r2.z) < 0.100000001);
    r8.xyz = -r1.www * r9.xyw + r5.yzw;
    r5.x = dot(r8.xyz, r8.xyz);
    r5.x = rsqrt(r5.x);
    r8.xyz = r8.xyz * r5.xxx;
    r5.x = dot(r8.xyz, r5.yzw);
    r5.y = 0.970000029 * r5.x;
    r1.w = cmp(abs(r1.w) < 0.200000003);
    r1.w = r0.w ? r1.w : 0;
    r5.x = cmp(r5.x < 0.0515463911);
    r0.w = r0.w ? r5.x : 0;
    r5.x = r0.w ? 9.99999975e-005 : r5.y;
    r5.xyz = r8.xyz * r5.xxx;
    r5.xyz = r1.www ? r5.xyz : r7.xyz;
    r8.xyz = cb12[7].xyz + -r6.xyz;
    r5.w = dot(r8.xyz, r8.xyz);
    r5.w = rsqrt(r5.w);
    r8.xyz = r8.xyz * r5.www;
    r2.z = 0.5 + -r2.z;
    r8.xyz = r8.xyz * r2.zzz + r2.xyw;
    r8.xyz = r5.xyz * cb0[22].xxx + r8.xyz;
    r6.xyz = r1.www ? r8.xyz : r6.xyz;
    r0.w = r1.w ? r0.w : 0;
    r2.xyz = r0.www ? r2.xyw : r6.xyz;
    r7.xyz = r0.www ? r1.xyz : r5.xyz;
    r1.xyz = -cb9[r0.y+32].yzx * r2.zxy;
    r1.xyz = r2.yzx * -cb9[r0.y+32].zxy + -r1.xyz;
    r0.w = dot(r2.xyz, -cb9[r0.y+32].xyz);
    r1.w = -r0.w;
    r5.xyz = cb9[r0.y+32].www * r2.xyz;
    r5.w = 0;
    r1.xyzw = r5.xyzw + r1.xyzw;
    r5.xyz = cb9[r0.y+32].zxy * r1.yzx;
    r5.xyz = cb9[r0.y+32].yzx * r1.zxy + -r5.xyz;
    r1.xyz = cb9[r0.y+32].www * r1.xyz + r5.xyz;
    r1.xyz = r1.www * cb9[r0.y+32].xyz + r1.xyz;
    r1.xyz = cb9[r0.y+0].xyz + r1.xyz;
    r1.xyz = -cb12[7].xyz + r1.xyz;
    r0.y = dot(r1.xyz, r1.xyz);
    r2.w = sqrt(r0.y);
    r0.x = (int)r0.z + (int)r0.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r7.xyzw
    r0.yzw = (int3)r0.xxx + int3(1,2,3);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r2.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r3.xyzw
    r4.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.wwww, r4.xyzw
  }
  return;
}